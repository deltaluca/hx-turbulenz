package turbulenz;

typedef Int8 = Int;
typedef Int16 = Int;
typedef Int32 = Int;
typedef UInt8 = Int;
typedef UInt16 = Int;
typedef UInt32 = Int;
typedef Float32 = Float;
typedef Float64 = Float;

abstract TZArray<T>(Dynamic) {
    @:from public static inline function fromArrI8 (xs:Array<Int8>)   :TZArray<Int8>    return untyped xs;
    @:from public static inline function fromArrI16(xs:Array<Int16>)  :TZArray<Int16>   return untyped xs;
    @:from public static inline function fromArrI32(xs:Array<Int32>)  :TZArray<Int32>   return untyped xs;
    @:from public static inline function fromArrU8 (xs:Array<UInt8>)  :TZArray<UInt8>   return untyped xs;
    @:from public static inline function fromArrU16(xs:Array<UInt16>) :TZArray<UInt16>  return untyped xs;
    @:from public static inline function fromArrU32(xs:Array<UInt32>) :TZArray<UInt32>  return untyped xs;
    @:from public static inline function fromArrF32(xs:Array<Float32>):TZArray<Float32> return untyped xs;
    @:from public static inline function fromArrF64(xs:Array<Float64>):TZArray<Float64> return untyped xs;

    @:from public static inline function fromArrI<T>(xs:Array<Int>):TZArray<T> return untyped xs;

    @:from public static inline function fromTI8 (xs:js.html.Int8Array)   :TZArray<Int8>    return untyped xs;
    @:from public static inline function fromTI16(xs:js.html.Int16Array)  :TZArray<Int16>   return untyped xs;
    @:from public static inline function fromTI32(xs:js.html.Int32Array)  :TZArray<Int32>   return untyped xs;
    @:from public static inline function fromTU8 (xs:js.html.Uint8Array)  :TZArray<UInt8>   return untyped xs;
    @:from public static inline function fromTU16(xs:js.html.Uint16Array) :TZArray<UInt16>  return untyped xs;
    @:from public static inline function fromTU32(xs:js.html.Uint32Array) :TZArray<UInt32>  return untyped xs;
    @:from public static inline function fromTF32(xs:js.html.Float32Array):TZArray<Float32> return untyped xs;
    @:from public static inline function fromTF64(xs:js.html.Float64Array):TZArray<Float64> return untyped xs;

    public var length(get,never):Int;
    inline function get_length()
        return untyped __js__("(function () { return this.length; })").call(this);

    @:arrayAccess public inline function get(i:Int):T
        return untyped __js__("(function (i) { return this[i]; })").call(this, i);
    @:arrayAccess public inline function set(i:Int, x:T):T
        return untyped __js__("(function (i,x) { return this[i] = x; })").call(this, i, x);
}

typedef Rectangle<T> = TZArray<T>;
typedef Point<T> = TZArray<T>;
typedef Vector<T> = TZArray<T>;
