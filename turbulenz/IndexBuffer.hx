package turbulenz;

import turbulenz.GraphicsDevice;
import turbulenz.TZArray;

typedef IndexWriteIterator = Dynamic;

@:native("IndexBuffer")
@:publicFields
extern class IndexBuffer {
    var id(default,never):Int;
    var numIndices(default,never):Int;
    var format(default,never):Array<IndexFormat>;

    // dynamic is reserved word in Haxe
    var _dynamic(get,never):Bool;
    inline function get__dynamic():Bool return
        untyped __js__("(function () { return this.dynamic; })").call(this);

    function setData<T>(data:TZArray<T>, ?offset:Int, ?count:Int):Void;
    function map(?offset:Int, ?count:Int):Null<IndexWriteIterator>;
    function unmap(writer:IndexWriteIterator):Void;
    function destroy():Void;
}

