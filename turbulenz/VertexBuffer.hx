package turbulenz;

import turbulenz.GraphicsDevice;
import turbulenz.TZArray;

typedef VertexWriteIterator = Dynamic;

@:native("VertexBuffer")
@:publicFields
extern class VertexBuffer {
    var id(default,never):Int;
    var numVertices(default,never):Int;
    var numAttributes(default,never):Int;
    var attributes(default,never):Array<VertexFormat>;
    var stride(default,never):Int;

    // dynamic is reserved word in Haxe
    var _dynamic(get,never):Bool;
    inline function get__dynamic():Bool return
        untyped __js__("(function () { return this.dynamic; })").call(this);

    function setData<T>(data:TZArray<T>, ?offset:Int, ?count:Int):Void;
    function map(?offset:Int, ?count:Int):Null<VertexWriteIterator>;
    function unmap(writer:VertexWriteIterator):Void;
    function destroy():Void;
}
