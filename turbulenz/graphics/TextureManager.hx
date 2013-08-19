package turbulenz.graphics;

import turbulenz.graphics.GraphicsDevice;
import turbulenz.graphics.Texture;
import turbulenz.graphics.TextureInstance;
import turbulenz.net.RequestHandler;
import turbulenz.util.TZJS;

@:native("TextureManager")
@:publicFields
extern class TextureManager {
    static function __init__():Void {
        TZJS.require("observer");
        TZJS.require("texturemanager");
        TZJS.require("utilities");
    }

    static function create(graphics:GraphicsDevice, handler:RequestHandler<Texture>, ?defaultTexture:Texture, ?errorCallback:String->Void):TextureManager;

    var version(default,never):Float;

    function add(path:String, texture:Texture):Void;
    function destroy():Void;
    function getAll():Dynamic<Texture>;
    function getInstance(path:String):TextureInstance;
    function getNumPendingTextures():Int;
    function get(path:String):Texture;
    function isArchiveLoaded(path:String):Bool;
    function isTextureLoaded(path:String):Bool;
    function isTextureMissing(path:String):Bool;
    function loadArchive(path:String, ?nomipmaps:Bool, ?onTextureLoaded:Texture->Void, ?onArchiveLoaded:Dynamic<Texture>->Void):Void;
    function load(path:String, ?nomipmaps:Bool, ?onload:Texture->Void):Texture;
    function map(alias:String, path:String):Void;
    function reloadAll():Void;
    function reload(path:String):Void;
    function removeArchive(path:String):Void;
    function remove(path:String):Void;
    function setPathRemapping(prm:Dynamic<String>, assetUrl:String):Void;
}
