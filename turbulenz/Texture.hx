package turbulenz;

import turbulenz.GraphicsDevice;
import turbulenz.VMath;

@:native("Texture")
@:publicFields
extern class Texture {
    var name(default,never):String;
    var id(default,never):Int;
    var width(default,never):Int;
    var height(default,never):Int;
    var depth(default,never):Int;
    var format(default,never):PixelFormat;
    var cubemap(default,never):Bool;
    var mipmaps(default,never):Bool;
    var renderable(default,never):Bool;
    var _dynamic(get,never):Bool;
    inline function get__dynamic():Bool return untyped __js__("(function ()
        return this.dynamic)
    ").call(this);

    function setData<T>(data:VArray<T>):Void;
}
