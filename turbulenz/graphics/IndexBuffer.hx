package turbulenz.graphics;

import turbulenz.graphics.GraphicsDevice;
import turbulenz.util.TZArray;

typedef IndexWriteIterator = Dynamic;

@:native("IndexBuffer")
@:publicFields
extern class IndexBuffer {
    var format(default,never):Array<IndexFormat>;
    var id(default,never):Int;
    var numIndices(default,never):Int;

    function destroy():Void;
    function map(?offset:Int, ?count:Int):Null<IndexWriteIterator>;
    function setData<T>(data:TZArray<T>, ?offset:Int, ?count:Int):Void;
    function unmap(writer:IndexWriteIterator):Void;

    // dynamic is reserved word in Haxe
    var _dynamic(get,never):Bool;
    inline function get__dynamic():Bool return
        untyped __js__("(function () { return this.dynamic; })").call(this);
}

