package turbulenz;

typedef Int8 = Int;
typedef Int16 = Int;
typedef Int32 = Int;
typedef UInt8 = Int;
typedef UInt16 = Int;
typedef UInt32 = Int;
typedef Float32 = Float;
typedef Float64 = Float;

abstract VArray<T>(Dynamic) {
    @:from public static inline function fromArrI8 (xs:Array<Int8>)   :VArray<Int8>    return untyped xs;
    @:from public static inline function fromArrI16(xs:Array<Int16>)  :VArray<Int16>   return untyped xs;
    @:from public static inline function fromArrI32(xs:Array<Int32>)  :VArray<Int32>   return untyped xs;
    @:from public static inline function fromArrU8 (xs:Array<UInt8>)  :VArray<UInt8>   return untyped xs;
    @:from public static inline function fromArrU16(xs:Array<UInt16>) :VArray<UInt16>  return untyped xs;
    @:from public static inline function fromArrU32(xs:Array<UInt32>) :VArray<UInt32>  return untyped xs;
    @:from public static inline function fromArrF32(xs:Array<Float32>):VArray<Float32> return untyped xs;
    @:from public static inline function fromArrF64(xs:Array<Float64>):VArray<Float64> return untyped xs;

    @:from public static inline function fromTI8 (xs:js.html.Int8Array)   :VArray<Int8>    return untyped xs;
    @:from public static inline function fromTI16(xs:js.html.Int16Array)  :VArray<Int16>   return untyped xs;
    @:from public static inline function fromTI32(xs:js.html.Int32Array)  :VArray<Int32>   return untyped xs;
    @:from public static inline function fromTU8 (xs:js.html.Uint8Array)  :VArray<UInt8>   return untyped xs;
    @:from public static inline function fromTU16(xs:js.html.Uint16Array) :VArray<UInt16>  return untyped xs;
    @:from public static inline function fromTU32(xs:js.html.Uint32Array) :VArray<UInt32>  return untyped xs;
    @:from public static inline function fromTF32(xs:js.html.Float32Array):VArray<Float32> return untyped xs;
    @:from public static inline function fromTF64(xs:js.html.Float64Array):VArray<Float64> return untyped xs;

    public var length(get,never):Int;
    inline function get_length()
        return untyped __js__("(function () return this.length)").call(this);

    @:arrayAccess public inline function get(i:Int):T
        return untyped __js__("(function (i) return this[i])").call(this, i);
    @:arrayAccess public inline function set(i:Int, x:T):T
        return untyped __js__("(function (i,x) return this[i]=x").call(this, i, x);
}

typedef Rectangle<T> = VArray<T>;
typedef Point<T> = VArray<T>;
typedef RGBA = VArray<Float64>;
typedef Vector<T> = VArray<T>;
