#include "config.h"

String inputBuffer = "";         // Buffer for incoming G-Code lines


/**
* Look for character /code/ in the inputBuffer and read the float that immediately follows it.
* @return the value found.  If nothing is found, /defaultVal/ is returned.
* @input code the character to look for.
* @input defaultVal the return value if /code/ is not found.
**/
float parseParameter(char code,float defaultVal) {
	int codePosition = inputBuffer.indexOf(code);
	if(codePosition!=-1) {
		//code found in buffer

		//find end of number (separated by " " (space))
		int delimiterPosition = inputBuffer.indexOf(" ",codePosition+1);

		float parsedNumber = inputBuffer.substring(codePosition+1,delimiterPosition).toFloat();

		return parsedNumber;
		} else {
		return defaultVal;
	}

}

void setupGCodeProc() {
	inputBuffer.reserve(MAX_BUFFFER_MCODE_LINE);
}

void sendAnswer(uint8_t error, String message) {
	if(error==0)
	Serial.print(F("ok "));
	else
	Serial.print(F("error "));

	Serial.println(message);
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

/**
* Read the input buffer and find any recognized commands.  One G or M command per line.
*/
void processCommand() {

	//get the command, default -1 if no command found
	int cmd = parseParameter('M',-1);

	#ifdef DEBUG
	Serial.print("command found: M");
	Serial.println(cmd);
	#endif


	switch(cmd) {

		/*
		FEEDER-CODES
		*/

		case MCODE_PRE_PICK: {

			int8_t signedFeederNo = (int)parseParameter('N',-1);

			//check for presence of a mandatory FeederNo
			if(!validFeederNo(signedFeederNo,1)) {
				sendAnswer(1,F("feederNo missing or invalid"));
				break;
			}

			//send pre pick command
			if (!feeders[signedFeederNo].sendPrePick()) {
				sendAnswer(1,F("No acknowledge from feeder"));
			} else {
				sendAnswer(0,F("Shutter opened"));
			}
     
      break;
		}

		case MCODE_ADVANCE: {
			int8_t signedFeederNo = (int)parseParameter('N',-1);
			int8_t overrideErrorRaw = (int)parseParameter('X',-1);
			bool overrideError = false;
			if(overrideErrorRaw >= 1) {
				overrideError = true;
				#ifdef DEBUG
				Serial.println("Argument X1 found, error will be ignored");
				#endif
			}

			//check for presence of a mandatory FeederNo
			if(!validFeederNo(signedFeederNo,1)) {
				sendAnswer(1,F("feederNo missing or invalid"));
				break;
			}

			//send feed command
			if (!feeders[signedFeederNo].sendAdvance(overrideError)) {
				sendAnswer(1,F("Unable to advance tape"));
			} else {
				sendAnswer(0,F("Tape advanced"));
			}
			
			break;
		}

		case MCODE_FEEDER_STATUS: {
			int8_t signedFeederNo = (int)parseParameter('N',-1);

			//check for presence of FeederNo
			if(!validFeederNo(signedFeederNo,1)) {
				sendAnswer(1,F("feederNo missing or invalid"));
				break;
			}

			sendAnswer(0,feeders[signedFeederNo].reportStatus());

			break;
		}

		case MCODE_GET_FEED_COUNT: {
			int8_t signedFeederNo = (int)parseParameter('N',-1);

			//check for presence of FeederNo
			if(!validFeederNo(signedFeederNo,1)) {
				sendAnswer(1,F("feederNo missing or invalid"));
				break;
			}

      uint8_t inBuf[24];
			if(feeders[signedFeederNo].readEEPROM(inBuf)) {
        uint32_t count = (inBuf[5] << 16) + (inBuf[3] << 8) + inBuf[2];
        char countStr[22];
        sprintf(countStr, "Feed count: %u", count);
  			sendAnswer(0,F(countStr));
      } else {
        sendAnswer(1,F(" no response from feeder"));
      }

			break;
		}

		case MCODE_CLEAR_FEED_COUNT: {
			int8_t signedFeederNo = (int)parseParameter('N',-1);

			//check for presence of FeederNo
			if(!validFeederNo(signedFeederNo,1)) {
				sendAnswer(1,F("feederNo missing or invalid"));
				break;
			}

			if (!feeders[signedFeederNo].clearFeedCount()) {
				sendAnswer(1,F("Unable to clear feed count"));
			} else {
				sendAnswer(0,F("Feed count cleared"));
			}

			break;
		}

    case MCODE_GET_ERR42_COUNT: {
      int8_t signedFeederNo = (int)parseParameter('N',-1);

      //check for presence of FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,F("feederNo missing or invalid"));
        break;
      }

      uint8_t inBuf[24];
      if(feeders[signedFeederNo].readEEPROM(inBuf)) {
        uint16_t count = ((inBuf[12] & 0x0f) << 8) + inBuf[8];
        char countStr[22];
        sprintf(countStr, "Error 42 count: %u", count);
        sendAnswer(0,F(countStr));
      } else {
        sendAnswer(1,F(" no response from feeder"));
      }

      break;
    }

    case MCODE_GET_ERR43_COUNT: {
      int8_t signedFeederNo = (int)parseParameter('N',-1);

      //check for presence of FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,F("feederNo missing or invalid"));
        break;
      }

      uint8_t inBuf[24];
      if(feeders[signedFeederNo].readEEPROM(inBuf)) {
        uint16_t count = ((inBuf[12] & 0xf0) << 4) + inBuf[9];
        char countStr[22];
        sprintf(countStr, "Error 43 count: %u", count);
        sendAnswer(0,F(countStr));
      } else {
        sendAnswer(1,F(" no response from feeder"));
      }

      break;
    }

    case MCODE_GET_ERR44_COUNT: {
      int8_t signedFeederNo = (int)parseParameter('N',-1);

      //check for presence of FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,F("feederNo missing or invalid"));
        break;
      }

      uint8_t inBuf[24];
      if(feeders[signedFeederNo].readEEPROM(inBuf)) {
        uint16_t count = ((inBuf[13] & 0x0f) << 8) + inBuf[10];
        char countStr[22];
        sprintf(countStr, "Error 44 count: %u", count);
        sendAnswer(0,F(countStr));
      } else {
        sendAnswer(1,F(" no response from feeder"));
      }

      break;
    }

    case MCODE_GET_RESET_COUNT: {
      int8_t signedFeederNo = (int)parseParameter('N',-1);

      //check for presence of FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,F("feederNo missing or invalid"));
        break;
      }

      if(signedFeederNo%2 != 0) { // Reset count is only in the lane 1 field, so need to adjust if it is lane 2
        signedFeederNo--;
      }

      uint8_t inBuf[24];
      if(feeders[signedFeederNo].readEEPROM(inBuf)) {
        uint16_t count = ((inBuf[13] & 0xf0) << 4) + inBuf[11];
        char countStr[22];
        sprintf(countStr, "Reset count: %u", count);
        sendAnswer(0,F(countStr));
      } else {
        sendAnswer(1,F(" no response from feeder"));
      }

      break;
    }

		case MCODE_READ_EEPROM: {
			int8_t signedFeederNo = (int)parseParameter('N',-1);

			//check for presence of FeederNo
			if(!validFeederNo(signedFeederNo,1)) {
				sendAnswer(1,F("feederNo missing or invalid"));
				break;
			}

      uint8_t inBuf[24];
			if(feeders[signedFeederNo].readEEPROM(inBuf)) {
        char hex[50];
        sprintf(hex, "%02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X ", inBuf[0], inBuf[1], inBuf[2], inBuf[3], inBuf[4], inBuf[5], inBuf[6], inBuf[7], inBuf[8], inBuf[9], inBuf[10], inBuf[11], inBuf[12], inBuf[13], inBuf[14], inBuf[15]);
  			sendAnswer(0,F(hex));
			} else {
        sendAnswer(1,F(" no response from feeder"));
			}
			break;
		}

    case MCODE_GET_FEEDER_ID: {
      int8_t signedFeederNo = (int)parseParameter('N',-1);

      //check for presence of FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,F("feederNo missing or invalid"));
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
        sendAnswer(0,F(idStr));
      } else {
        sendAnswer(1,F(" no response from feeder"));
      }

      break;
    }

		case MCODE_GET_PITCH: {
			int8_t signedFeederNo = (int)parseParameter('N',-1);

			//check for presence of FeederNo
			if(!validFeederNo(signedFeederNo,1)) {
				sendAnswer(1,F("feederNo missing or invalid"));
				break;
			}

      uint8_t inBuf[24];
			if(feeders[signedFeederNo].readEEPROM(inBuf)) {
        char pitch[6];
        sprintf(pitch, "%d MM", (inBuf[4] == 0 ? 2 : 4));
  			sendAnswer(0,F(pitch));
			} else {
        sendAnswer(1,F(" no response from feeder"));
			}
			break;
		}

    case MCODE_TOGGLE_PITCH: {
      int8_t signedFeederNo = (int)parseParameter('N',-1);
      int8_t pitch;

      //check for presence of FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,F("feederNo missing or invalid"));
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
          sendAnswer(1,F("Unable to set pitch"));
        } else {
          sendAnswer(0,F("Pitch set"));
        }

      } else {
        sendAnswer(1,F(" no response from feeder"));
      }
      break;
    }

		case MCODE_GET_FIRMWARE_INFO: {
			int8_t signedFeederNo = (int)parseParameter('N',-1);

			//check for presence of FeederNo
			if(!validFeederNo(signedFeederNo,1)) {
				sendAnswer(1,F("feederNo missing or invalid"));
				break;
			}

      uint8_t inBuf[64];
  			if (feeders[signedFeederNo].readInfo(inBuf)) {
        char version[25];
        sprintf(version, "Firmware version %d.%d", inBuf[2], inBuf[3]);
  			sendAnswer(0,F(version));
      } else {
        sendAnswer(1,F(" no response from feeder"));
      }

			break;
		}

    case MCODE_START_SELF_TEST: {

      int8_t signedFeederNo = (int)parseParameter('N',-1);

      //check for presence of a mandatory FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,F("feederNo missing or invalid"));
        break;
      }

      //send self test command
      if (!feeders[signedFeederNo].startSelfTest()) {
        sendAnswer(1,F("No acknowledge from feeder"));
      } else {
        sendAnswer(0,F("Self test started"));
      }
     
      break;
    }

    case MCODE_STOP_SELF_TEST: {

      int8_t signedFeederNo = (int)parseParameter('N',-1);

      //check for presence of a mandatory FeederNo
      if(!validFeederNo(signedFeederNo,1)) {
        sendAnswer(1,F("feederNo missing or invalid"));
        break;
      }

      //send self test command
      if (!feeders[signedFeederNo].stopSelfTest()) {
        sendAnswer(1,F("No acknowledge from feeder"));
      } else {
        sendAnswer(0,F("Self test stopped"));
      }
     
      break;
    }


		default:
		sendAnswer(0,F("unknown or empty command ignored"));

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
		inputBuffer += receivedChar;

		// if the received character is a newline, processCommand
		if (receivedChar == '\n') {

			//remove comments
			inputBuffer.remove(inputBuffer.indexOf(";"));
			inputBuffer.trim();


			processCommand();

			//clear buffer
			inputBuffer="";

		}
	}
}
