package turbulenz.graphics;

import turbulenz.graphics.Texture;
import turbulenz.util.TZJS;

@:native("TextureInstance")
@:publicFields
extern class TextureInstance {
    static function __init__():Void {
        TZJS.require("observer");
        TZJS.require("texturemanager");
        TZJS.require("utilities");
    }

    static function create(name:String, texture:Texture):TextureInstance;

    function destroy():Void;
    function getTexture():Texture;
    function setTexture(texture:Texture):Void;
    function subscribeTextureChanged(callback:TextureInstance->Void):Void;
    function unsubscribeTextureChanged(callback:TextureInstance->Void):Void;
}
