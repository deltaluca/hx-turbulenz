package turbulenz;

import turbulenz.GraphicsDevice;
import turbulenz.TZArray;

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
    function destroy():Void;
    function setData<T>(data:TZArray<T>, ?face:Int=0, ?level:Int=0, ?x:Int=0, ?y:Int=0, ?w:Int=0, ?h:Int=0):Void;
}
