package turbulenz.graphics;

import turbulenz.graphics.GraphicsDevice;

@:native("RenderBuffer")
@:publicFields
extern class RenderBuffer {
    var format(default,never):PixelFormat;
    var height(default,never):Int;
    var id(default,never):Int;
    var width(default,never):Int;

    function destroy():Void;
}
