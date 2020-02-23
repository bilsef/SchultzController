
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <Arduino.h>
#include <util/delay_basic.h>

#include "Feeder.h"
#include "config.h"

void FeederClass::setup(uint8_t _feederNo, uint8_t port, uint8_t lane) {
	this->feederNo = _feederNo;
	this->port = port;
	this->lane = lane+1;  // lanes are numbered starting from 1

  FeederClass::setTX(TXportPin[port]);
  FeederClass::begin(9600); // serial baud rate
}

bool FeederClass::receiveACK() {
  uint8_t RXbuf[4];
  
	while (!Serial1.available()) {
		if ((millis() - this->lastTimeCommandSent) > ACK_TIMEOUT) {
      #ifdef DEBUG
        Serial.println(" ACK timeout!");
      #endif
			return false;
		}
	}

  Serial1.readBytes(RXbuf,3);
  
  #ifdef DEBUG
    Serial.print(RXbuf[0],HEX);
    Serial.print(' ');
    Serial.print(RXbuf[1],HEX);
    Serial.print(' ');
    Serial.println(RXbuf[2],HEX);
  #endif
  
  return (RXbuf[0] == 1) && (RXbuf[1] == 0xE0) && (RXbuf[2] == 0xE1);
}

bool FeederClass::receiveMessage(uint8_t *dataBuf) {
  uint8_t RXbuf[4];
  uint8_t inChar;
	uint8_t msgLen = 0;
	uint8_t RXckSum = 0;
	bool gotError = false;

	while (!Serial1.available()) {
		if ((millis() - this->lastTimeCommandSent) > RESP_TIMEOUT) {
      #ifdef DEBUG
        Serial.println(" ack timeout!");
      #endif
      return false;
		}
	}

	// expecting ack message
  Serial1.readBytes(RXbuf,3);
  gotError = (RXbuf[0] != 1) || (RXbuf[1] != 0xE0) || (RXbuf[2] != 0xE1);

  // followed by response message
  while (!Serial1.available()) {
		if ((millis() - this->lastTimeCommandSent) > RESP_TIMEOUT) {
      #ifdef DEBUG
        Serial.println(" message timeout!");
      #endif
      return false;
		}
	}

	// get message length
	inChar = (uint8_t)Serial1.read();
  msgLen = inChar +1;
  if ((msgLen > 1) && (msgLen < 64)) { // valid message is 1 to 64 bytes, otherwise ignore it
    dataBuf[0] = inChar;  // store length
    Serial1.readBytes(&dataBuf[1], msgLen);
    // verify checksum
    RXckSum = 0;
    for(uint8_t i=0; i<msgLen; i++) {
      RXckSum += dataBuf[i];
    }
		if (RXckSum != dataBuf[msgLen]) { // verify checksum
			#ifdef DEBUG
        Serial.print(dataBuf[dataBuf[0]+1],HEX);
        Serial.print(" != ");
        Serial.print(RXckSum,HEX);
				Serial.println(" Checksum failed!");
			#endif
			gotError = true;
		}
		return !gotError;
	} else {
    return false;
	}
}

bool FeederClass::sendCommand(uint8_t command) {
  uint8_t cmdLen = 2;
  uint8_t buf[] = {cmdLen, command, this->lane, 0};
  uint8_t i;
  uint8_t checksum = 0;
  
  while (Serial1.available()) {  // get rid of any leftover input data
    Serial1.read();
  }
  
  // calculate checksum
  for (i = 0; i < cmdLen + 1; i++) {
    checksum += buf[i];
  }
  buf[i] = checksum;
  
  #ifdef DEBUG
    Serial.print(this->port);
    Serial.print(F(" sending: "));
      for (i = 0; i < cmdLen + 2; i++) {
        Serial.print(buf[i],HEX);
        Serial.print(' ');
      }
    Serial.println();
    Serial1.write(command);
  #endif

  #ifdef SIMULATE
    return true;
  #endif
  for (i = 0; i < cmdLen + 2; i++) {
    FeederClass::write(buf[i]);
  }
  this->lastTimeCommandSent = millis();

  return FeederClass::receiveACK();
}

bool FeederClass::sendCommand(uint8_t command, uint8_t *dataBuf) {
	uint8_t cmdLen = 2;
	uint8_t buf[] = {cmdLen, command, this->lane, 0};
  uint8_t i;
  uint8_t checksum = 0;
  
  while (Serial1.available()) {  // get rid of any leftover input data
    Serial1.read();
  }
  
  // calculate checksum
  for (i = 0; i < cmdLen + 1; i++) {
    checksum += buf[i];
  }
  buf[i] = checksum;
  
  #ifdef DEBUG
    Serial.print(this->port);
    Serial.print(F(" sending: "));
      for (i = 0; i < cmdLen + 2; i++) {
        Serial.print(buf[i],HEX);
        Serial.print(' ');
      }
    Serial.println();
    Serial1.write(command);
  #endif

  #ifdef SIMULATE
    return true;
  #endif
	for (i = 0; i < cmdLen + 2; i++) {
		FeederClass::write(buf[i]);
	}
	this->lastTimeCommandSent = millis();

  return FeederClass::receiveMessage(dataBuf);
}

bool FeederClass::sendCommand(uint8_t command, uint8_t dataLen, uint8_t *data) {
  uint8_t msgLen = dataLen + 2;
	uint8_t buf[msgLen+2];
  uint8_t i;
  uint8_t checksum = 0;

  buf[0] = msgLen;
  buf[1] = command;
  buf[2] = this->lane;

  for (i=0; i<dataLen; i++) {
    buf[i+3] = data[i];
  }

  // calculate checksum
  for (i = 0; i < msgLen + 1; i++) {
    checksum += buf[i];
  }
  buf[i] = checksum;
  
  #ifdef DEBUG
    Serial.println(checksum,HEX);
    Serial.print(F("sending: "));
      for (i = 0; i < msgLen + 2; i++) {
        Serial.print(buf[i],HEX);
        Serial.print(' ');
      }
    Serial.println();
  #endif

  while (Serial1.available()) {  // get rid of any leftover input data
    Serial1.read();
  }

  #ifdef SIMULATE
    for (i = 0; i < 16; i++) {
      this->eeprom[i] = buf[i+3];
    }
    return true;
  #endif
  
	for (i = 0; i < msgLen + 2; i++) {
		FeederClass::write(buf[i]);
	}
	this->lastTimeCommandSent = millis();

	return FeederClass::receiveACK();
}

bool FeederClass::sendPrePick() {
  uint8_t dataBuf[6];

  #ifdef DEBUG
    Serial.println("send Pre-Pick command");
  #endif

	if (!FeederClass::sendCommand(CMD_PRE_PICK, dataBuf)) {
		#ifdef DEBUG
			Serial.println(F("No ACK from feeder"));
		#endif
		return false;
	}
  #ifdef DEBUG
    Serial.println("Received ACK, check status");
  #endif

  #ifdef SIMULATE
    this->feederStatus = STATUS_OK;
  #else
    this->feederStatus = dataBuf[1];  // should verify that byte 2 matches the lane?
  #endif
  return true;
}

bool FeederClass::sendAdvance(bool overrideError) {
	if( this->feederStatus == STATUS_INVALID) {	// need to read status from feeder if it is not up to date
		FeederClass::getFeederStatus();
	}

	#ifdef DEBUG
		Serial.println(F("advance triggered"));
		Serial.println(this->reportStatus());
	#endif
	
	//check whether feeder is OK before every advance command
	if( this->feederStatus != STATUS_OK ) {
		//feeder is in error state, usually this would lead to exit advance with false and no advancing command sent
		 
		 if(!overrideError) {
			//error, and error was not overridden -> return false, advance not successful
			return false;
		 } else {
			#ifdef DEBUG
				Serial.println(F("overridden error temporarily"));
			#endif
			 
		 }
	}
  #ifdef DEBUG
    Serial.println("send advance command");
  #endif

  #ifdef SIMULATE
    if (++this->eeprom[2] == 0) ++this->eeprom[3];
  #endif
  
  if (!FeederClass::sendCommand(CMD_ADVANCE)) {
    #ifdef DEBUG
      Serial.println(F("No ACK from feeder"));
    #endif
    return false;
  }
  return true;
}

bool FeederClass::setPitch(uint8_t pitch) {
  uint8_t dataBuf[2];

  #ifdef DEBUG
    Serial.print(F("Set pitch to "));
    Serial.println(pitch);
  #endif
  
  dataBuf[0] = pitch;
  dataBuf[1] = 0;
  
  if (!FeederClass::sendCommand(CMD_SET_PITCH, 1 , dataBuf)) {
    #ifdef DEBUG
      Serial.println(F("No ACK from feeder"));
    #endif
    return false;
  }
  return true;
}

bool FeederClass::feederIsOk() {
	if(this->feederStatus == STATUS_OK) {
		return true;
	} else {
		return false;
	}
}

bool FeederClass::getFeederStatus() {
  uint8_t dataBuf[6];
    #ifdef DEBUG
      Serial.println("send status command");
    #endif

	if (!FeederClass::sendCommand(CMD_STATUS, dataBuf)) {
		#ifdef DEBUG
			Serial.println(F("No ACK from feeder"));
		#endif
		return false;
	}

  #ifdef SIMULATE
    this->feederStatus = STATUS_OK;
  #else
	  this->feederStatus = dataBuf[1];  // should verify that byte 2 matches the lane?
	#endif
	return true;
}

bool FeederClass::readEEPROM(uint8_t *dataBuf) {
    #ifdef DEBUG
      Serial.println("send read EEPROM command");
    #endif

  if (!FeederClass::sendCommand(CMD_EEPROM_READ, dataBuf)) {
    #ifdef DEBUG
      Serial.println(F("No ACK from feeder"));
    #endif
    return false;
  }

  #ifdef SIMULATE
    for (uint8_t i = 0; i < 16; i++) {
      dataBuf[i] = this->eeprom[i];
    }
  #else
    uint8_t len = dataBuf[0];
    uint8_t i = 0;
    for ( ; i < len-4; i++) {
      dataBuf[i] = dataBuf[i+4];
    }
    dataBuf[i] = 0;
  #endif

  return true;
}

bool FeederClass::readInfo(uint8_t *dataBuf) {
    #ifdef DEBUG
      Serial.println("send read info command");
    #endif

  if (!FeederClass::sendCommand(CMD_INFO, dataBuf)) {
    #ifdef DEBUG
      Serial.println(F("No ACK from feeder"));
    #endif
    return false;
  }

  return true;
}
  
bool FeederClass::clearFeedCount() {
  uint8_t dataBuf[22];

  // Read current EEPROM data
    #ifdef DEBUG
      Serial.println("send read EEPROM command");
    #endif

  if (!FeederClass::sendCommand(CMD_EEPROM_READ, dataBuf)) {
    #ifdef DEBUG
      Serial.println(F("No ACK from feeder"));
    #endif
    return false;
  }

  #ifdef SIMULATE
    for (uint8_t i = 0; i < 16; i++) {
      dataBuf[i+1] = this->eeprom[i];
    }
  #endif

  for (uint8_t i = 1; i < 17; i++) {
    dataBuf[i] = dataBuf[i+3];
  }

  dataBuf[0] = 0;
  dataBuf[8] = 1;

  dataBuf[3] = 0; // count low byte
  dataBuf[4] = 0; // count high byte
  #ifdef DEBUG
    Serial.println("send write EEPROM command");
  #endif

  if (!FeederClass::sendCommand(CMD_EEPROM_WRITE, 17, dataBuf)) {
    #ifdef DEBUG
      Serial.println(F("No ACK from feeder"));
    #endif
    return false;
  }
  
  #ifdef SIMULATE
    for (uint8_t i = 0; i < 16; i++) {
      this->eeprom[i] == dataBuf[i+1];
    }
  #endif
  
  return true;
}


String FeederClass::reportStatus() {
	
  FeederClass::getFeederStatus();

	switch(this->feederStatus) {
		case STATUS_OK:
			return "getFeederStatus: feeder OK";
		break;
		case STATUS_INVALID:
			return "getFeederStatus: invalid, status not updated";
		break;
		case STATUS_NO_TAPE_TENSION:
			return "getFeederStatus: No tape tension.  Tape may be broken";
		break;
		case STATUS_NO_TAPE_TRIGGER:
			return "getFeederStatus: Tape take-up not triggered after multiple feeds";
		break;
		case STATUS_FEED_ERROR:
			return "getFeederStatus: Feed motor did not advance";
		break;
		default:
      uint8_t statusCode[34];
      sprintf( statusCode, "Unrecognized status code %02X", this->feederStatus);
			return statusCode;
	}
}

bool FeederClass::startSelfTest() {
  uint8_t dataBuf[2];

  #ifdef DEBUG
    Serial.println("send self test command");
  #endif

  dataBuf[0] = 5;
  dataBuf[1] = 0;
  
  if (!FeederClass::sendCommand(CMD_SELF_TEST, 1 , dataBuf)) {
    #ifdef DEBUG
      Serial.println(F("No ACK from feeder"));
    #endif
    return false;
  }
}

bool FeederClass::stopSelfTest() {
  uint8_t dataBuf[2];

  #ifdef DEBUG
    Serial.println("send stop self test command");
  #endif

  dataBuf[0] = 7;
  dataBuf[1] = 0;
  
  if (!FeederClass::sendCommand(CMD_SELF_TEST, 1 , dataBuf)) {
    #ifdef DEBUG
      Serial.println(F("No ACK from feeder"));
    #endif
    return false;
  }
}

void FeederClass::setTX(uint8_t tx) {
  // First write, then set output. If we do this the other way around,
  // the pin would be output low for a short while before switching to
  // output high. Now, it is input with pullup for a short while, which
  // is fine. With inverse logic, either order is fine.
  digitalWrite(tx, this->inverse_logic ? LOW : HIGH);
  pinMode(tx, OUTPUT);
  this->_transmitBitMask = digitalPinToBitMask(tx);
  uint8_t port = digitalPinToPort(tx);
  this->_transmitPortRegister = portOutputRegister(port);
}

uint16_t FeederClass::subtract_cap(uint16_t num, uint16_t sub) {
  if (num > sub)
    return num - sub;
  else
    return 1;
}

/* static */
inline void FeederClass::tunedDelay(uint16_t delay) {
  _delay_loop_2(delay);
}

void FeederClass::begin(long speed) {
  this->_tx_delay = 0;

  // Precalculate the various delays, in number of 4-cycle delays
  uint16_t bit_delay = (F_CPU / speed) / 4;

  // 12 (gcc 4.8.2) or 13 (gcc 4.3.2) cycles from start bit to first bit,
  // 15 (gcc 4.8.2) or 16 (gcc 4.3.2) cycles between bits,
  // 12 (gcc 4.8.2) or 14 (gcc 4.3.2) cycles from last bit to stop bit
  // These are all close enough to just use 15 cycles, since the inter-bit
  // timings are the most critical (deviations stack 8 times)
  this->_tx_delay = subtract_cap(bit_delay, 15 / 4);

}


size_t FeederClass::write(uint8_t b) {
  // By declaring these as local variables, the compiler will put them
  // in registers _before_ disabling interrupts and entering the
  // critical timing sections below, which makes it a lot easier to
  // verify the cycle timings
  volatile uint8_t *reg = this->_transmitPortRegister;
  uint8_t reg_mask = this->_transmitBitMask;
  uint8_t inv_mask = ~this->_transmitBitMask;
  uint8_t oldSREG = SREG;
  bool inv = this->inverse_logic;
  uint16_t delay = this->_tx_delay;

  if (inv)
    b = ~b;

  cli();  // turn off interrupts for a clean txmit

  // Write the start bit
  if (inv)
    *reg |= reg_mask;
  else
    *reg &= inv_mask;

  tunedDelay(delay);

  // Write each of the 8 bits
  for (uint8_t i = 8; i > 0; --i)
  {
    if (b & 1) // choose bit
      *reg |= reg_mask; // send 1
    else
      *reg &= inv_mask; // send 0

    tunedDelay(delay);
    b >>= 1;
  }

  // restore pin to natural state
  if (inv)
    *reg &= inv_mask;
  else
    *reg |= reg_mask;

  SREG = oldSREG; // turn interrupts back on
  tunedDelay(delay);

  return 1;
}
