/**
 * This script moves the camera to the feeder location (which must be the fiducial location)
 * and homes in on the fiducial.  It then updates the feeder location.
 */

// Load Examples/JavaScript/Utility.js functions into our scope. This will define the
// task function.
load(scripting.getScriptsDirectory().toString() + '/Examples/JavaScript/Utility.js');

// Import some OpenPnP classes we'll use
var imports = new JavaImporter(org.openpnp.model, org.openpnp.util, org.openpnp.machine.reference.feeder);

// Using the imports from above, do some work.
with (imports) {
	task(function() {
		var camera = machine.getDefaultHead().getDefaultCamera();
		for each (var feeder in machine.getFeeders()) {
			if (!(feeder instanceof SlotSchultzFeeder)) {
				continue;
			}
			var location = feeder.getLocation();
			camera.moveTo(location);
			var fiducialPart = feeder.getFiducialPart();
			var newLocation = feeder.getFiducialLocation(location, fiducialPart);
      if (newLocation != null) {
        // Store new location.  Does not change Z or rotation.
        feeder.setLocation(new Location(LengthUnit.Millimeters, newLocation.getX(), newLocation.getY(), location.getZ(), location.getRotation()));
      }
		}
	});
}