/**
 * This script reads the feeder ID from EEPROM and automatically loads it
 * into slots using SlotSchultzFeeder.
 * The script loops through each SlotSchultzFeeder defined on the
 * machine. It then reads the feeder ID from EEPROM.
 * The ID is used to find a feeder with the same name, and
 * if one is found it is loaded into the slot.
 */

// Load Examples/JavaScript/Utility.js functions into our scope. This will define the
// task function.
load(scripting.getScriptsDirectory().toString() + '/Examples/JavaScript/Utility.js');

// Import some OpenPnP classes we'll use
var imports = new JavaImporter(org.pmw.tinylog.Logger, org.openpnp.model, org.openpnp.util, org.openpnp.machine.reference.feeder);

function findFeeder(feeder, name) {
	for each (var f in feeder.bank.feeders) {
		if (f.name == name) {
			return f;
		}
	}
	return null;
}

// Using the imports from above, do some work.
with (imports) {
	task(function() {
		for each (var feeder in machine.getFeeders()) {
			if (!(feeder instanceof SlotSchultzFeeder)) {
				continue;
			}

			var IDactuator = machine.getActuatorByName(feeder.getIdActuatorName());
			var actuatorNumber = feeder.getActuatorValue();
			var feederID = IDactuator.read(actuatorNumber);

			if (feederID == null) {
				continue;
			}

			var f = findFeeder(feeder, feederID);
			if (!f) {
				continue;
			}

			feeder.setFeeder(f);
			gui.feedersTab.repaint();
			Logger.debug(("Loaded slot "+ feeder.getName()) + (" with " + feederID));
		}
	});
}