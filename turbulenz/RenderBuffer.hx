package turbulenz;

import turbulenz.GraphicsDevice;

@:native("RenderBuffer")
@:publicFields
extern class RenderBuffer {
    var id(default,never):Int;
    var width(default,never):Int;
    var height(default,never):Int;
    var format(default,never):PixelFormat;

    function destroy():Void;
}
