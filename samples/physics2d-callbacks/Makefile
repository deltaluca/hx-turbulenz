all:
	haxe -main Physics2DCallbacks -js physics2dcallbacks.js -lib turbulenz -dce full
	cp -r ../css .

	# build canvas-debug application
	makehtml --mode canvas-debug -t . physics2dcallbacks.js -o physics2dcallbacks.canvas.debug.html template.html

	# build canvas-release application
	maketzjs --mode canvas -t . -o physics2dcallbacks.canvas.js physics2dcallbacks.js
	makehtml --mode canvas -t . -o physics2dcallbacks.canvas.html --code physics2dcallbacks.canvas.js physics2dcallbacks.js template.html

	# build plugin-debug application
	maketzjs --mode plugin -t . -o physics2dcallbacks.tzjs physics2dcallbacks.js
	makehtml --mode plugin-debug -t . -o physics2dcallbacks.debug.html --code physics2dcallbacks.tzjs physics2dcallbacks.js template.html

	# build plugin-release application
	makehtml --mode plugin -t . -o physics2dcallbacks.html --code physics2dcallbacks.tzjs physics2dcallbacks.js template.html
