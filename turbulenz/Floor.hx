package turbulenz;

import turbulenz.GraphicsDevice;
import turbulenz.MathDevice;
import turbulenz.TZArray;

@:native("Floor")
@:publicFields
extern class Floor {
    static function __init__():Void turbulenz.TZJS.require("floor");

    var version(get,never):Float;
    var color:RGBA;
    var fadeToColor:RGBA;
    var numLines:Int;

    static function create(graphics:GraphicsDevice, math:MathDevice):Floor;

    function render(graphics:GraphicsDevice, camera:Camera):Void;
}
