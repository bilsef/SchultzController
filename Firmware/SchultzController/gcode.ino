#include "config.h"

String inputBuffer[] = {"", "", "", ""};         // Buffer for incoming G-Code lines
int bufPtr = 0;

/**
* Look for character /code/ in the inputBuffer and read the float that immediately follows it.
* @return the value found.  If nothing is found, /defaultVal/ is returned.
* @input code the character to look for.
* @input defaultVal the return value if /code/ is not found.
**/
float parseParameter(String inBuf, char code, float defaultVal) {
	int codePosition = inBuf.indexOf(code);
	if(codePosition!=-1) {
		//code found in buffer

		//find end of number (separated by " " (space))
		int delimiterPosition = inBuf.indexOf(" ",codePosition+1);

		float parsedNumber = inBuf.substring(codePosition+1,delimiterPosition).toFloat();

		return parsedNumber;
		} else {
		return defaultVal;
	}

}

void setupGCodeProc() {
  for (int i=0; i<4; i++) {
	  inputBuffer[i].reserve(MAX_BUFFFER_MCODE_LINE);
  }
}

void sendAnswer(uint8_t error, String message) {
  switch (error) {
    case 0: {
      Serial.print("ok ");
      Serial.println(message);
      break;
    }

    case 1: {
      Serial.print("error ");
      Serial.println(message);
      break;
    }

    case 2: {
      Serial.println(message);
      Serial.println("ok ");
      break;
    }
  }
}

bool validFeederNo(int8_t signedFeederNo, uint8_t feederNoMandatory = 0) {
	if(signedFeederNo == -1 && feederNoMandatory >= 1) {
		//no number given (-1) but it is mandatory.
		return false;
		} else {
		//state now: number is given, check for valid range
		if(signedFeederNo<0 || signedFeederNo>(NUMBER_OF_FEEDERS-1)) {
			//error, number not in a valid range
			return false;
			} else {
			//valid number
			return true;
		}
	}
}

bool validPitch(int8_t pitch, uint8_t pitchMandatory = 0) {
  if(pitch == -1 && pitchMandatory >= 1) {
    //no number given (-1) but it is mandatory.
    return false;
    } else {
    //state now: number is given, check for valid range
    if(pitch<0 || pitch>1) {
      //error, number not in a valid range
      return false;
      } else {
      //valid number
      return true;
    }
  }
}

bool validFeederID(int32_t signedFeederID, uint8_t feederIDMandatory = 0) {
  if(signedFeederID == -1 && feederIDMandatory >= 1) {
    //no number given (-1) but it is mandatory.
    return false;
    } else {
    //state now: number is given, check for valid range
    if(signedFeederID<0 || signedFeederID>65535) {
      //error, number not in a valid range
      return false;
      } else {
      //valid number
      return true;
    }
  }
}

/**
* Read the input buffer and find any recognized commands.  One G or M command per line.
*/
void processCommand(String cmdBuf) {

	//get the command, default -1 if no command found
	int cmd = parseParameter(cmdBuf, 'M', -1);

	#ifdef DEBUG
	Serial.print("command found: M");
	Serial.println(cmd);
	#endif


	switch(cmd) {

    // M115
    case MCODE_DRIVER_INFO: {
      sendAnswer(2,"FIRMWARE_NAME: Schultz Feeder Controller, FIRMWARE_VERSION: 2.0");
      break;
    }

		/*
		FEEDER-CODES
		*/

		case MCODE_PRE_PICK: {

			int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);

			//check for presence of a mandatory FeederNo
			if(!validFeederNo(signedFeederNo,1)) {
				sendAnswer(1,"feederNo missing or invalid");
				break;
			}

			//send pre pick command
			if (!feeders[signedFeederNo].sendPrePick()) {
				sendAnswer(1,"No acknowledge from feeder");
			} else {
				sendAnswer(0,"Shutter opened");
			}
     
      break;
		}

		case MCODE_ADVANCE: {
			int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);
			int8_t overrideErrorRaw = (int)parseParameter(cmdBuf, 'X',-1);
			bool overrideError = false;
			if(overrideErrorRaw >= 1) {
				overrideError = true;
				#ifdef DEBUG
				Serial.println("Argument X1 found, error will be ignored");
				#endif
			}

			//check for presence of a mandatory FeederNo
			if(!validFeederNo(signedFeederNo,1)) {
				sendAnswer(1,"feederNo missing or invalid");
				break;
			}

			//send feed command
			if (!feeders[signedFeederNo].sendAdvance(overrideError)) {
				sendAnswer(1,"Unable to advance tape");
			} else {
				sendAnswer(0,"Tape advanced");
			}
			
			break;
		}

		case MCODE_FEEDER_STATUS: {
			int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);

			//check for presence of FeederNo
			if(!validFeederNo(signedFeederNo,1)) {
				sendAnswer(1,"feederNo missing or invalid");
				break;
			}

			sendAnswer(0,feeders[signedFeederNo].reportStatus());

			break;
		}

		case MCODE_GET_FEED_COUNT: {
			int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);

			//check for presence of FeederNo
			if(!validFeederNo(signedFeederNo,1)) {
				sendAnswer(1,"feederNo missing or invalid");
				break;
			}

      uint8_t inBuf[24];
			if(feeders[signedFeederNo].readEEPROM(inBuf)) {
        uint32_t counth = inBuf[5];
        counth <<= 16;
        uint32_t countm = inBuf[3];
        countm <<= 8;
        uint32_t count = counth + countm + inBuf[2];
        char countStr[22];
        sprintf(countStr, "Feed count: %lu", count);
  			sendAnswer(0,countStr);
      } else {
        sendAnswer(1," no response from feeder");
      }

			break;
		}

		case MCODE_CLEAR_FEED_COUNT: {
			int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);

			//check for presence of FeederNo
			if(!validFeederNo(signedFeederNo,1)) {
				sendAnswer(1,"feederNo missing or invalid");
				break;
			}

			if (!feeders[signedFeederNo].clearFeedCount()) {
				sendAnswer(1,"Unable to clear feed count");
			} else {
				sendAnswer(0,"Feed count cleared");
			}

			break;
		}

    case MCODE_GET_ERR42_COUNT: {
      int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);

      //check for presence of FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,"feederNo missing or invalid");
        break;
      }

      uint8_t inBuf[24];
      if(feeders[signedFeederNo].readEEPROM(inBuf)) {
        uint16_t count = inBuf[12] & 0x0f;
        count <<= 8;
        count += inBuf[8];
        char countStr[22];
        sprintf(countStr, "Error 42 count: %u", count);
        sendAnswer(0,countStr);
      } else {
        sendAnswer(1," no response from feeder");
      }

      break;
    }

    case MCODE_GET_ERR43_COUNT: {
      int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);

      //check for presence of FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,"feederNo missing or invalid");
        break;
      }

      uint8_t inBuf[24];
      if(feeders[signedFeederNo].readEEPROM(inBuf)) {
        uint16_t count = inBuf[12] & 0xf0;
        count <<= 4;
        count += inBuf[9];
        char countStr[22];
        sprintf(countStr, "Error 43 count: %u", count);
        sendAnswer(0,countStr);
      } else {
        sendAnswer(1," no response from feeder");
      }

      break;
    }

    case MCODE_GET_ERR44_COUNT: {
      int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);

      //check for presence of FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,"feederNo missing or invalid");
        break;
      }

      uint8_t inBuf[24];
      if(feeders[signedFeederNo].readEEPROM(inBuf)) {
        uint16_t count = inBuf[13] & 0x0f;
        count <<= 8;
        count += inBuf[10];
        char countStr[22];
        sprintf(countStr, "Error 44 count: %u", count);
        sendAnswer(0,countStr);
      } else {
        sendAnswer(1," no response from feeder");
      }

      break;
    }

    case MCODE_GET_RESET_COUNT: {
      int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);

      //check for presence of FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,"feederNo missing or invalid");
        break;
      }

      if(signedFeederNo%2 != 0) { // Reset count is only in the lane 1 field, so need to adjust if it is lane 2
        signedFeederNo--;
      }

      uint8_t inBuf[24];
      if(feeders[signedFeederNo].readEEPROM(inBuf)) {
        uint16_t count = inBuf[13] & 0xf0;
        count <<= 4;
        count += inBuf[11];
        char countStr[22];
        sprintf(countStr, "Reset count: %u", count);
        sendAnswer(0,countStr);
      } else {
        sendAnswer(1," no response from feeder");
      }

      break;
    }

		case MCODE_READ_EEPROM: {
			int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);

			//check for presence of FeederNo
			if(!validFeederNo(signedFeederNo,1)) {
				sendAnswer(1,"feederNo missing or invalid");
				break;
			}

      uint8_t inBuf[24];
			if(feeders[signedFeederNo].readEEPROM(inBuf)) {
        char hex[50];
        sprintf(hex, "%02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X ", inBuf[0], inBuf[1], inBuf[2], inBuf[3], inBuf[4], inBuf[5], inBuf[6], inBuf[7], inBuf[8], inBuf[9], inBuf[10], inBuf[11], inBuf[12], inBuf[13], inBuf[14], inBuf[15]);
  			sendAnswer(0,hex);
			} else {
        sendAnswer(1," no response from feeder");
			}
			break;
		}

    case MCODE_GET_FEEDER_ID: {
      int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);

      //check for presence of FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,"feederNo missing or invalid");
        break;
      }

      uint8_t inBuf[24];
      bool left = true;
      if(signedFeederNo%2 != 0) { // ID is only in the lane 1 field, so need to adjust if it is lane 2
        left = false;
        signedFeederNo--;
      }
      
      if(feeders[signedFeederNo].readEEPROM(inBuf)) {
        uint16_t id = (inBuf[1] << 8) + inBuf[0];
        char idStr[22];
        sprintf(idStr, "ID: %u%s", id, (left ? "L" : "R"));
        sendAnswer(0,idStr);
      } else {
        sendAnswer(1," no response from feeder");
      }

      break;
    }

    case MCODE_SET_FEEDER_ID: {
      int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);
      int32_t newFeederID = (int)parseParameter(cmdBuf, 'X',-1);

      //check for presence of FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,"feederNo missing or invalid");
        break;
      }

      //must be run from lane 1 of feeder, so adjust.
      if((signedFeederNo % 2) != 0) {
        --signedFeederNo;
      }

      //check for presence of FeederID
      if(!validFeederID(newFeederID,1)) {
        sendAnswer(1,"feederID missing or invalid");
        break;
      }

      
      if(feeders[signedFeederNo].setID(newFeederID)) {
        if(feeders[signedFeederNo+1].setID(0)) {  // need to clear 2nd lane also
          sendAnswer(0,"ID set");
        } else {
          sendAnswer(1," no response from feeder");
        }
      } else {
        sendAnswer(1," no response from feeder");
      }

      break;
    }

		case MCODE_GET_PITCH: {
			int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);

			//check for presence of FeederNo
			if(!validFeederNo(signedFeederNo,1)) {
				sendAnswer(1,"feederNo missing or invalid");
				break;
			}

      uint8_t inBuf[24];
			if(feeders[signedFeederNo].readEEPROM(inBuf)) {
        char pitch[6];
        sprintf(pitch, "%d MM", (inBuf[4] == 0 ? 2 : 4));
  			sendAnswer(0,pitch);
			} else {
        sendAnswer(1," no response from feeder");
			}
			break;
		}

    case MCODE_TOGGLE_PITCH: {
      int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);
      int8_t pitch;

      //check for presence of FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,"feederNo missing or invalid");
        break;
      }

      uint8_t inBuf[24];
      if(feeders[signedFeederNo].readEEPROM(inBuf)) {
        if (inBuf[4] == 0) {
          pitch = 1;
        } else {
          pitch = 0;
        }
        //send set pitch command
        if (!feeders[signedFeederNo].setPitch(pitch)) {
          sendAnswer(1,"Unable to set pitch");
        } else {
          sendAnswer(0,"Pitch set");
        }

      } else {
        sendAnswer(1," no response from feeder");
      }
      break;
    }

		case MCODE_GET_FIRMWARE_INFO: {
			int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);

			//check for presence of FeederNo
			if(!validFeederNo(signedFeederNo,1)) {
				sendAnswer(1,"feederNo missing or invalid");
				break;
			}

      uint8_t inBuf[64];
  			if (feeders[signedFeederNo].readInfo(inBuf)) {
        char version[25];
        sprintf(version, "Firmware version %d.%d", inBuf[2], inBuf[3]);
  			sendAnswer(0,version);
      } else {
        sendAnswer(1," no response from feeder");
      }

			break;
		}

    case MCODE_START_SELF_TEST: {

      int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);

      //check for presence of a mandatory FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,"feederNo missing or invalid");
        break;
      }

      //send self test command
      if (!feeders[signedFeederNo].startSelfTest()) {
        sendAnswer(1,"No acknowledge from feeder");
      } else {
        sendAnswer(0,"Self test started");
      }
     
      break;
    }

    case MCODE_STOP_SELF_TEST: {

      int8_t signedFeederNo = (int)parseParameter(cmdBuf, 'N',-1);

      //check for presence of a mandatory FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,"feederNo missing or invalid");
        break;
      }

      //send self test command
      if (!feeders[signedFeederNo].stopSelfTest()) {
        sendAnswer(1,"No acknowledge from feeder");
      } else {
        sendAnswer(0,"Self test stopped");
      }
     
      break;
    }


		default:
		sendAnswer(0,"unknown or empty command ignored");

		break;

	}

}

void listenToSerialStream() {

	while (Serial.available()) {

		// get the received byte, convert to char for adding to buffer
		char receivedChar = (char)Serial.read();

		// print back for debugging
		//#ifdef DEBUG
		  Serial.print(receivedChar);
		//#endif

		// add to buffer
		inputBuffer[bufPtr] += receivedChar;

		// if the received character is a newline, processCommand
		if (receivedChar == '\n') {
      #ifdef DEBUG
        Serial.print("buffer ");
        Serial.println(bufPtr);
      #endif
      int curBuf = bufPtr;
      // switch to next buffer while processing this one
      if (++bufPtr > 3)
        bufPtr = 0;

			//remove comments
			inputBuffer[curBuf].remove(inputBuffer[curBuf].indexOf(";"));
			inputBuffer[curBuf].trim();


			processCommand(inputBuffer[curBuf]);

			//clear buffer
			inputBuffer[curBuf]="";

		}
	}
}
