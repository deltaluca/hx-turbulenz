package turbulenz.graphics;

import turbulenz.graphics.GraphicsDevice;
import turbulenz.util.TZArray;

typedef VertexWriteIterator = Dynamic;

@:native("VertexBuffer")
@:publicFields
extern class VertexBuffer {
    var attributes(default,never):Array<VertexFormat>;
    var id(default,never):Int;
    var numAttributes(default,never):Int;
    var numVertices(default,never):Int;
    var stride(default,never):Int;

    function destroy():Void;
    function map(?offset:Int, ?count:Int):Null<VertexWriteIterator>;
    function setData<T>(data:TZArray<T>, ?offset:Int, ?count:Int):Void;
    function unmap(writer:VertexWriteIterator):Void;

    // dynamic is reserved word in Haxe
    var _dynamic(get,never):Bool;
    inline function get__dynamic():Bool return
        untyped __js__("(function () { return this.dynamic; })").call(this);
}
