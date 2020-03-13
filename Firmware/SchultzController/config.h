#ifndef _CONFIG_h
#define _CONFIG_h
#include "arduino.h"

#define BOARD96PIN
//#define BOARD4PIN

// prints some extra information via serial1
// uncomment to disable in production
//#define DEBUG

// simulates connected feeders
//#define SIMULATE


#define LANES_PER_PORT 2  // only supports 2 for now
// The serial port = Feeder Number / LANES_PER_PORT
// The lane within the port = Feeder Number % LANES_PER_PORT
#define NUMBER_OF_FEEDERS (LANES_PER_PORT * 20)  // number of ports(20) * LANES_PER_PORT

/*
 *  Upstream Serial
 */
#define SERIAL_BAUD 115200

//buffer size for serial commands received
#define MAX_BUFFFER_MCODE_LINE 64	// no line can be longer than this


/* -----------------------------------------------------------------
*  FEEDER COMMANDS
*  ----------------------------------------------------------------- */
#define CMD_INFO 0x01
#define CMD_PRE_PICK 0x02
#define CMD_ADVANCE 0x03
#define CMD_STATUS 0x15
#define CMD_EEPROM_READ 0x17
#define CMD_SELF_TEST 0x18
#define CMD_EEPROM_WRITE 0x19
#define CMD_SET_PITCH 0x1c

/* -----------------------------------------------------------------
*  FEEDER STATUS
*  ----------------------------------------------------------------- */
#define STATUS_OK 0x40
#define STATUS_NO_TAPE_TENSION 0x42 	// cover tape won't tension (no tape, or broken tape)
#define STATUS_NO_TAPE_TRIGGER 0x43  	// didn't trigger a retension after 2 feeds
#define STATUS_FEED_ERROR 0x44          // feed motor stuck
#define STATUS_INVALID 0                // status not checked since last feed

/* -----------------------------------------------------------------
*  FEEDER COMM CONSTANTS
*  ----------------------------------------------------------------- */
#define ACK_TIMEOUT 50
#define RESP_TIMEOUT 50
#define MSG_ACK 0xE0


/* -----------------------------------------------------------------
*  M-CODES
*  ----------------------------------------------------------------- */
#define MCODE_PRE_PICK 600
#define MCODE_ADVANCE 601
#define MCODE_FEEDER_STATUS 602
#define MCODE_GET_FEED_COUNT 603
#define MCODE_CLEAR_FEED_COUNT 623
#define MCODE_GET_ERR42_COUNT 604
#define MCODE_GET_ERR43_COUNT 605
#define MCODE_GET_ERR44_COUNT 606
#define MCODE_GET_RESET_COUNT 607
#define MCODE_GET_PITCH 608
#define MCODE_TOGGLE_PITCH 628
#define MCODE_GET_FEEDER_ID 610
#define MCODE_SET_FEEDER_ID 640
#define MCODE_READ_EEPROM 630
#define MCODE_GET_FIRMWARE_INFO 615
#define MCODE_START_SELF_TEST 650
#define MCODE_STOP_SELF_TEST 651


//DEFINE config_h-ENDIF!!!
#endif
