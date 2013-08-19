package turbulenz.graphics;

import turbulenz.graphics.GraphicsDevice;
import turbulenz.graphics.Shader;
import turbulenz.net.RequestHandler;
import turbulenz.util.TZJS;

@:native("ShaderManager")
@:publicFields
extern class ShaderManager {
    static function __init__():Void {
        TZJS.require("observer");
        TZJS.require("shadermanager");
    }

    static function create(graphics:GraphicsDevice, handler:RequestHandler<String>, ?defaultShader:Shader, ?errorCallback:String->Void):ShaderManager;

    var version(default,never):Float;

    function delete(path:String):Shader;
    function destroy():Void;
    function getAll():Dynamic<Shader>;
    function getNumPendingShaders():Int;
    function get(path:String):Shader;
    function isShaderLoaded(path:String):Bool;
    function isShaderMissing(path:String):Bool;
    function load(path:String, ?onload:Shader->Void):Shader;
    function map(alias:String, path:String):Void;
    function reloadAll():Void;
    function reload(path:String, callback:Shader->Void):Void;
    function setAutomaticParameterResize(name:String, size:Float):Void;
    function setPathRemapping(prm:Dynamic<String>, assetUrl:String):Void;
}
