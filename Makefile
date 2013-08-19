lib:
	rm -f turbulenz.zip
	zip -r turbulenz haxelib.json turbulenz
	haxelib local turbulenz.zip
