package turbulenz.graphics;

import turbulenz.util.TZArray;

typedef ParameterWriteIterator = Dynamic;

@:native("TechniqueParameterBuffer")
@:publicFields
extern class TechniqueParameterBuffer {
    var data(default,never):TZArray<Float32>;
    var numFloats(default,never):Int;

    function destroy():Void;
    function map(?firstValueToMap:Int,?numValuesToMap:Int):Null<ParameterWriteIterator>;
    function unmap(writer:ParameterWriteIterator):Void;

    // dynamic is a reserved word in Haxe
    var _dynamic(get,never):Bool;
    inline function get_dynamic():Bool return
        untyped __js__("(function () { return this.dynamic; }").call(this);
}
