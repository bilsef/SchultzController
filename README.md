# SchultzController

G-code controller for Siemens S (Schultz) feeders

## Arduino based controller in the hardware section.

The controller board distributes power to the feeders and provides the communication interface for 20 feeder units (40 lanes of components).  There are two versions of the controller board.  The KiCad files are in this folder.
* The 4 pin version has 20 individual 4 pin connectors.  One for each feeder unit.
* the 96 pin version has one 96 pin DIN connector compatible with the connector on the Siemens Communication Unit connector board.  This board is Siemens 1710470-Y1032-C1-01-86 and is inside of 00316265S05.
 
## Arduino code in the firmware section.

The board uses a Arduino Nano Every.  This is a low cost arduino which can easily be soldered to the control board.  Edit the config.h file in the arduino sketch to select the type of board you are using, then upload the sketch to the board.
