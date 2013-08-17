all:
	haxe -main DeviceInitialization -js deviceinitialization.js -lib turbulenz -dce full

	# build canvas-debug application
	makehtml --mode canvas-debug -t . deviceinitialization.js -o deviceinitialization.canvas.debug.html template.html

	# build canvas-release application
	maketzjs --mode canvas -t . -o deviceinitialization.canvas.js deviceinitialization.js
	makehtml --mode canvas -t . -o deviceinitialization.canvas.html --code deviceinitialization.canvas.js deviceinitialization.js template.html

	# build plugin-debug application
	maketzjs --mode plugin -t . -o deviceinitialization.tzjs deviceinitialization.js
	makehtml --mode plugin-debug -t . -o deviceinitialization.debug.html --code deviceinitialization.tzjs deviceinitialization.js template.html

	# build plugin-release application
	makehtml --mode plugin -t . -o deviceinitialization.html --code deviceinitialization.tzjs deviceinitialization.js template.html
