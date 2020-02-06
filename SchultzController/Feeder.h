#ifndef _FEEDER_h
#define _FEEDER_h

#include "arduino.h"
#include "config.h"


class FeederClass {
	protected:

			//on initialize it gets a number.
			int feederNo=-1;
			
			uint8_t port;	// TX serial port for this feeder
			uint8_t lane;	// lane within port
			uint8_t feederStatus = 0;	// initialized to invalid

      #ifdef SIMULATE
        uint8_t eeprom[16]; // simulates eeprom storage for read and write commands
      #endif

      /*
       *  Feeder number to TX port mapping (uses D port numbers)
       */
      const uint8_t TXportPin[20] = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 };

      bool inverse_logic = true;  // inverted logic for serial output
      
      bool sendCommand(uint8_t command);  // sends a simple command
      bool sendCommand(uint8_t command, uint8_t *dataBuf);  // sends a simple command, gets a response in dataBuf
      bool sendCommand(uint8_t command, uint8_t len, uint8_t *dataBuf);  // sends a simple command followed by data in dataBuf
      bool receiveACK();
      bool receiveMessage(uint8_t *dataBuf);

      /*
       * software serial routines - adapted from SendOnlySoftwareSerial by Nick Gammon 30th December 2016
       */
      uint8_t _transmitBitMask;
      volatile uint8_t *_transmitPortRegister;

      // Expressed as 4-cycle delays (must never be 0!)
      uint16_t _tx_delay;

      // private methods
      void setTX(uint8_t transmitPin);

      // Return num - sub, or 1 if the result would be < 1
      static uint16_t subtract_cap(uint16_t num, uint16_t sub);

      // private static method for timing
      static inline void tunedDelay(uint16_t delay);

	public:

    //store last timestamp command was sent for timeout
    unsigned long lastTimeCommandSent;
    
    void setup(uint8_t _feeder_no, uint8_t port, uint8_t lane);

    bool sendPrePick();
    bool sendAdvance(bool overrideError);
    bool clearFeedCount();
    bool getFeederStatus();
    bool readEEPROM(uint8_t *buf);
    bool readInfo(uint8_t *buf);
    bool startSelfTest();
    bool stopSelfTest();
    
    String reportStatus();
    bool feederIsOk();

    //software serial
    void begin(long speed);
    virtual size_t write(uint8_t byte);
};

extern FeederClass Feeder;

#endif
