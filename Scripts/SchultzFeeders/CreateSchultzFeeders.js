// Edit these variables for your situation
// ***********************************************************************
var numberOfSlots = 40;
var startingSlotNumber = 0;
var slotSuffix = "";  // appended to slot name, can be empty string
var Pitch = 31.5;     // this is the pitch of the pins in the base
var startX = 300;     // X,Y position of right most feeder from machine head view
var startY = 51.5;
var Xdirection = 0;   // 0 = constant, 1 = increment, -1 = decrement
var Ydirection = 1;
var Zheight = -13.0;  // pick up height
var rotation = 90;    // TODO: could be automatically calculated based on direction

var feederNumber = 0;  // starting feeder number for actuators

    // Set to the actuator names you have defined in machine setup
var GetIDActuator = "GetID";
var PrePickActuator = "PrePick";
var PostPickActuator = "PostPick";
var GetCountActuator = "GetCount";
var ClearCountActuator = "ClearCount";
var GetPitchActuator = "GetPitch";
var TogglePitchActuator = "TogglePitch";
var GetStatusActuator = "GetStatus";

    // Set to the part you have defined
var FiducialPart = "FIDUCIAL-FEEDER";

// ***********************************************************************



// Import some OpenPnP classes we'll use
var imports = new JavaImporter(org.openpnp.model, org.openpnp.util, org.openpnp.machine.reference.feeder);

// Using the imports from above, do some work.
with (imports) {
  var newX = startX;
  var newY = startY;
	for (var i = 0; i < numberOfSlots; i++) {
		// Create a new slot
		var feeder = new SlotSchultzFeeder();
		// Set it's name to SLOT-i
		feeder.setName('SLOT-' + (i + startingSlotNumber) + slotSuffix);
		// Set it's location to x = i * 16, y = 0, z = 0, rotation = 0.
    if (i%2 == 0) {
      if (i > 0) {
        newX = newX + (Pitch * Xdirection);
        newY = newY + (Pitch * Ydirection);
      }
      feeder.setLocation(new Location(LengthUnit.Millimeters, newX, newY, Zheight, rotation));
    } else {
      feeder.setLocation(new Location(LengthUnit.Millimeters, newX + (15 * Xdirection), newY + (15 * Ydirection), Zheight, rotation));
    }  
    
    feeder.setFiducialPart(FiducialPart);
    
    feeder.setActuatorValue(feederNumber++);
    feeder.setIdActuatorName(GetIDActuator);
    feeder.setActuatorName(PrePickActuator);
    feeder.setPostPickActuatorName(PostPickActuator);
    feeder.setFeedCountActuatorName(GetCountActuator);
    feeder.setClearCountActuatorName(ClearCountActuator); 
    feeder.setPitchActuatorName(GetPitchActuator); 
    feeder.setTogglePitchActuatorName(TogglePitchActuator);
    feeder.setStatusActuatorName(GetStatusActuator);
    
		// Add the feeder to the machine.
		machine.addFeeder(feeder);
	}
}
