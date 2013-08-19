package turbulenz.graphics;

import turbulenz.graphics.GraphicsDevice;
import turbulenz.graphics.TechniqueParameters;
import turbulenz.util.TZJS;

@:native("Material")
@:publicFields
extern class Material {
    static function __init__():Void {
        TZJS.require("material");
        TZJS.require("utilities");
    }

    static function create(graphics:GraphicsDevice):Material;

    function getName():String;

    var techniqueParameters:TechniqueParameters;
    var meta:Dynamic<Dynamic>;
}

