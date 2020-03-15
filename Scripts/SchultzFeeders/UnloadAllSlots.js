// Load Examples/JavaScript/Utility.js functions into our scope. This will define the
// task function.
load(scripting.getScriptsDirectory().toString() + '/Examples/JavaScript/Utility.js');

// Import some OpenPnP classes we'll use
var imports = new JavaImporter(org.openpnp.model, org.openpnp.util, org.openpnp.machine.reference.feeder);

// Using the imports from above, do some work.
with (imports) {
	task(function() {
		for each (var feeder in machine.feeders) {
			if (!(feeder instanceof SlotSchultzFeeder)) {
				continue;
			}
			feeder.setFeeder(null);
		}
		gui.feedersTab.repaint();
	});
}
