/*
* Author: Bill Ruckman
* (c)2020
*
* Adapted from 0816feeder by mrgl
*    https://github.com/mgrl/0816-feeder-firmware
*
* This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
* http://creativecommons.org/licenses/by-nc-sa/4.0/
*
* current version: v0.0
*
*
*/

// ------------------  I N C  L I B R A R I E S ---------------

#include "config.h"
#include "Feeder.h"


// ------------------  V A R  S E T U P -----------------------

FeederClass feeders[NUMBER_OF_FEEDERS];

// ------------------  U T I L I T I E S ---------------


// ------------------  S E T U P -----------------------
void setup() {
  byte i;
  
	Serial.begin(SERIAL_BAUD);
	while (!Serial);
	Serial.println(F("Controller starting...")); Serial.flush();
	
	Serial1.begin(9600); // The hardware RX port
  
  for (i = 0; i < NUMBER_OF_FEEDERS; i++) {
    feeders[i].setup(i, i/LANES_PER_PORT, i%LANES_PER_PORT);	// initialize with feeder number, port and lane
  }
  
	// setup listener to serial stream
	setupGCodeProc();

	Serial.println(F("Controller ready."));

}



// ------------------  L O O P -----------------------

void loop() {
	// Process incoming serial data and perform callbacks
	listenToSerialStream();

}
