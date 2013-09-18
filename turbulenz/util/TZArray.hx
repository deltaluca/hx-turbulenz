package turbulenz.util;

typedef Int8    = Int;
typedef Int16   = Int;
typedef Int32   = Int;
typedef UInt8   = Int;
typedef UInt16  = Int;
typedef UInt32  = Int;
typedef Float32 = Float;
typedef Float64 = Float;
typedef Buffer  = Dynamic;

// Represents a WebGL TypedArray that falls back to a standard JS array at runtime
// If WebGL TypedArrays at not present in the browser VM.
abstract TZArray<T>(Dynamic) {
    @:from public static inline function fromArrI8 (xs:Array<Int8>)   :TZArray<Int8>    return untyped xs;
    @:from public static inline function fromArrI16(xs:Array<Int16>)  :TZArray<Int16>   return untyped xs;
    @:from public static inline function fromArrI32(xs:Array<Int32>)  :TZArray<Int32>   return untyped xs;
    @:from public static inline function fromArrU8 (xs:Array<UInt8>)  :TZArray<UInt8>   return untyped xs;
    @:from public static inline function fromArrU16(xs:Array<UInt16>) :TZArray<UInt16>  return untyped xs;
    @:from public static inline function fromArrU32(xs:Array<UInt32>) :TZArray<UInt32>  return untyped xs;
    @:from public static inline function fromArrF32(xs:Array<Float32>):TZArray<Float32> return untyped xs;
    @:from public static inline function fromArrF64(xs:Array<Float64>):TZArray<Float64> return untyped xs;

    @:from public static inline function fromArrI<T>(xs:Array<Int>)  :TZArray<T> return untyped xs;
    @:from public static inline function fromArrF<T>(xs:Array<Float>):TZArray<T> return untyped xs;

    @:from public static inline function fromTI8 (xs:js.html.Int8Array)   :TZArray<Int8>    return untyped xs;
    @:from public static inline function fromTI16(xs:js.html.Int16Array)  :TZArray<Int16>   return untyped xs;
    @:from public static inline function fromTI32(xs:js.html.Int32Array)  :TZArray<Int32>   return untyped xs;
    @:from public static inline function fromTU8 (xs:js.html.Uint8Array)  :TZArray<UInt8>   return untyped xs;
    @:from public static inline function fromTU16(xs:js.html.Uint16Array) :TZArray<UInt16>  return untyped xs;
    @:from public static inline function fromTU32(xs:js.html.Uint32Array) :TZArray<UInt32>  return untyped xs;
    @:from public static inline function fromTF32(xs:js.html.Float32Array):TZArray<Float32> return untyped xs;
    @:from public static inline function fromTF64(xs:js.html.Float64Array):TZArray<Float64> return untyped xs;

    public static inline function createF64(length:Int):TZArray<Float64> return TZArrayImpl.f64(length);
    public static inline function createF32(length:Int):TZArray<Float32> return TZArrayImpl.f32(length);
    public static inline function createI32(length:Int):TZArray<Int32>   return TZArrayImpl.i32(length);
    public static inline function createI16(length:Int):TZArray<Int16>   return TZArrayImpl.i16(length);
    public static inline function createI8 (length:Int):TZArray<Int8>    return TZArrayImpl.i8 (length);
    public static inline function createU32(length:Int):TZArray<UInt32>  return TZArrayImpl.u32(length);
    public static inline function createU16(length:Int):TZArray<UInt16>  return TZArrayImpl.u16(length);
    public static inline function createU8 (length:Int):TZArray<UInt8>   return TZArrayImpl.u8 (length);

    public static inline function createF64Data(data:Array<Float64>):TZArray<Float64> return TZArrayImpl.f64Data(data);
    public static inline function createF32Data(data:Array<Float32>):TZArray<Float32> return TZArrayImpl.f32Data(data);
    public static inline function createI32Data(data:Array<Int32>  ):TZArray<Int32>   return TZArrayImpl.i32Data(data);
    public static inline function createI16Data(data:Array<Int16>  ):TZArray<Int16>   return TZArrayImpl.i16Data(data);
    public static inline function createI8Data (data:Array<Int8>   ):TZArray<Int8>    return TZArrayImpl.i8Data (data);
    public static inline function createU32Data(data:Array<UInt32> ):TZArray<UInt32>  return TZArrayImpl.u32Data(data);
    public static inline function createU16Data(data:Array<UInt16> ):TZArray<UInt16>  return TZArrayImpl.u16Data(data);
    public static inline function createU8Data (data:Array<UInt8>  ):TZArray<UInt8>   return TZArrayImpl.u8Data (data);

    public var length(get,never):Int;
    inline function get_length():Int return this.length;

    @:arrayAccess public inline function get(i:Int):T return this[i];
    @:arrayAccess public inline function set(i:Int, x:T):T return this[i] = x;
}

typedef Rectangle<T> = TZArray<T>;
typedef Point<T>     = TZArray<T>;
typedef Vector<T>    = TZArray<T>;

class TZArrayImpl {
    public static var f64    :Int->TZArray<Float64>;
    public static var f32    :Int->TZArray<Float32>;
    public static var u32    :Int->TZArray<UInt32>;
    public static var i32    :Int->TZArray<Int32>;
    public static var u16    :Int->TZArray<UInt16>;
    public static var i16    :Int->TZArray<Int16>;
    public static var u8     :Int->TZArray<UInt8>;
    public static var i8     :Int->TZArray<Int8>;
    public static var view   :Dynamic->Int->Int->Dynamic;
    public static var f64View:Buffer->?Int->?Int->Null<TZArray<Float64>>;
    public static var f32View:Buffer->?Int->?Int->Null<TZArray<Float32>>;
    public static var u32View:Buffer->?Int->?Int->Null<TZArray<UInt32>>;
    public static var i32View:Buffer->?Int->?Int->Null<TZArray<Int32>>;
    public static var u16View:Buffer->?Int->?Int->Null<TZArray<UInt16>>;
    public static var i16View:Buffer->?Int->?Int->Null<TZArray<Int16>>;
    public static var u8View :Buffer->?Int->?Int->Null<TZArray<UInt8>>;
    public static var i8View :Buffer->?Int->?Int->Null<TZArray<Int8>>;
    public static var f64Data:Array<Float64>->TZArray<Float64>;
    public static var f32Data:Array<Float32>->TZArray<Float32>;
    public static var u32Data:Array<UInt32> ->TZArray<UInt32>;
    public static var i32Data:Array<Int32>  ->TZArray<Int32>;
    public static var u16Data:Array<UInt16> ->TZArray<UInt16>;
    public static var i16Data:Array<Int16>  ->TZArray<Int16>;
    public static var u8Data :Array<UInt8>  ->TZArray<UInt8>;
    public static var i8Data :Array<Int8>   ->TZArray<Int8>;

    static function __init__() {
        if (untyped __js__('typeof Float64Array !== "undefined"')) {
            var test = untyped __js__('new Float64Array(4)');
            if (untyped __js__('Object.prototype.toString.call(test)') == '[object Float64Array]') {
                TZArrayImpl.f64 = function (len:Int) return untyped __js__('new Float64Array(len)');
                TZArrayImpl.f32 = function (len:Int) return untyped __js__('new Float32Array(len)');
                TZArrayImpl.u32 = function (len:Int) return untyped __js__('new Uint32Array(len)');
                TZArrayImpl.i32 = function (len:Int) return untyped __js__('new Int32Array(len)');
                TZArrayImpl.u16 = function (len:Int) return untyped __js__('new Uint16Array(len)');
                TZArrayImpl.i16 = function (len:Int) return untyped __js__('new Int16Array(len)');
                TZArrayImpl.u8  = function (len:Int) return untyped __js__('new Uint8Array(len)');
                TZArrayImpl.i8  = function (len:Int) return untyped __js__('new Int8Array(len)');
                TZArrayImpl.f64Data = function (data:Array<Float64>) return untyped __js__('new Float64Array(data)');
                TZArrayImpl.f32Data = function (data:Array<Float32>) return untyped __js__('new Float32Array(data)');
                TZArrayImpl.i32Data = function (data:Array<Int32>)   return untyped __js__('new Int32Array(data)');
                TZArrayImpl.i16Data = function (data:Array<Int16>)   return untyped __js__('new Int16Array(data)');
                TZArrayImpl.i8Data  = function (data:Array<Int8>)    return untyped __js__('new Int8Array(data)');
                TZArrayImpl.u32Data = function (data:Array<UInt32>)  return untyped __js__('new Uint32Array(data)');
                TZArrayImpl.u16Data = function (data:Array<UInt16>)  return untyped __js__('new Uint16Array(data)');
                TZArrayImpl.u8Data  = function (data:Array<UInt8>)   return untyped __js__('new Uint8Array(data)');
            }
            else {
                TZArrayImpl.f64 = TZArrayImpl.f32 = function (len) return [for (i in 0...len) 0.0];
                TZArrayImpl.u32 = TZArrayImpl.i32 = TZArrayImpl.u16 = TZArrayImpl.i16 = TZArrayImpl.u8 =
                    TZArrayImpl.i8 = function (len) return [for (i in 0...len) 0];
                TZArrayImpl.f64Data = TZArrayImpl.f32Data = function (data) return data;
                TZArrayImpl.i32Data = TZArrayImpl.i16Data = TZArrayImpl.i8Data = function (data) return data;
                TZArrayImpl.u32Data = TZArrayImpl.u16Data = TZArrayImpl.u8Data = function (data) return data;
            }
        }
    }
}

