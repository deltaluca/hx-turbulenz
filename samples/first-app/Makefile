all:
	haxe -main FirstApp -js firstapp.js -lib turbulenz -dce full
	cgfx2json -i generic3D.cgfx -o generic3D.cgfx.json

	# build canvas-debug application
	makehtml --mode canvas-debug -t . firstapp.js -o firstapp.canvas.debug.html

	# build canvas-release application
	maketzjs --mode canvas -t . -o firstapp.canvas.js firstapp.js
	makehtml --mode canvas -t . -o firstapp.canvas.html --code firstapp.canvas.js firstapp.js

	# build plugin-debug application
	maketzjs --mode plugin -t . -o firstapp.tzjs firstapp.js
	makehtml --mode plugin-debug -t . -o firstapp.debug.html --code firstapp.tzjs firstapp.js

	# build plugin-release application
	makehtml --mode plugin -t . -o firstapp.html --code firstapp.tzjs firstapp.js
