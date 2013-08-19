package turbulenz.graphics;

import turbulenz.graphics.GraphicsDevice;
import turbulenz.MathDevice;
import turbulenz.util.TZArray;

@:native("Floor")
@:publicFields
extern class Floor {
    static function __init__():Void turbulenz.util.TZJS.require("floor");

    var color:RGBA;
    var fadeToColor:RGBA;
    var numLines:Int;
    var version(get,never):Float;

    static function create(graphics:GraphicsDevice, math:MathDevice):Floor;

    function render(graphics:GraphicsDevice, camera:Camera):Void;
}
