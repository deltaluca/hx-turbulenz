package turbulenz;

import turbulenz.TZArray;

typedef ParameterWriteIterator = Dynamic;

@:native("TechniqueParameterBuffer")
@:publicFields
extern class TechniqueParameterBuffer {
    var numFloats(default,never):Int;
    var data(default,never):TZArray<Float32>;

    // dynamic is a reserved word in Haxe
    var _dynamic(get,never):Bool;
    inline function get_dynamic():Bool return
        untyped __js__("(function () { return this.dynamic; }").call(this);

    function map(?firstValueToMap:Int,?numValuesToMap:Int):Null<ParameterWriteIterator>;
    function unmap(writer:ParameterWriteIterator):Void;
    function destroy():Void;
}
