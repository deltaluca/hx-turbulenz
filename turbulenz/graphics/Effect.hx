package turbulenz.graphics;

import turbulenz.graphics.Renderable;
import turbulenz.util.TZJS;

@:native("Effect")
@:publicFields
extern class Effect {
    static function __init__():Void TZJS.require("effectmanager");

    static function create(name:String):Effect;

    function add(geometryType:String, prepareObject:{prepare:Renderable->Void}):Void;
    function get(name:String):{prepare:Renderable->Void};
    function remove(name:String):Void;

    var name(default,never):String;
    var version(default,never):Float;
}
