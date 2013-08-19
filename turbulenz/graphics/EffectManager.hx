package turbulenz.graphics;

import turbulenz.graphics.Effect;
import turbulenz.util.TZJS;

@:native("EffectManager")
@:publicFields
extern class EffectManager {
    static function __init__():Void TZJS.require("effectmanager");

    static function create():EffectManager;

    function add(effect:Effect):Void;
    function get(name:String):Effect;
    function map(alias:String, name:String):Void;
    function remove(name:String):Void;

    var version(default,never):Float;
}

