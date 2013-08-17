package turbulenz.graphics;

import turbulenz.graphics.GraphicsDevice;
import turbulenz.util.TZArray;

@:native("Texture")
@:publicFields
extern class Texture {
    var cubemap(default,never):Bool;
    var depth(default,never):Int;
    var format(default,never):PixelFormat;
    var height(default,never):Int;
    var id(default,never):Int;
    var mipmaps(default,never):Bool;
    var name(default,never):String;
    var renderable(default,never):Bool;
    var width(default,never):Int;

    function destroy():Void;
    function setData<T>(data:TZArray<T>, ?face:Int=0, ?level:Int=0, ?x:Int=0, ?y:Int=0, ?w:Int=0, ?h:Int=0):Void;

    // dynamc is a reserved word in haxe
    var _dynamic(get,never):Bool;
    inline function get__dynamic():Bool return untyped __js__("(function ()
        return this.dynamic)
    ").call(this);
}
