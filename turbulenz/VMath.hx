package turbulenz;

abstract VArray(Dynamic) {
    inline function new(x:Dynamic) this = x;

    @:from public static inline function arrf(arr:Array<Float>):VArray
        return new VArray(arr);
    @:from public static inline function arri(arr:Array<Int>):VArray
        return new VArray(arr);

    public var length(get,never):Int;
    inline function get_length() {
        var _this = this;
        return untyped __js__('_this.length');
    }

    @:arrayAccess inline public function get(i:Int):Float {
        var _this = this;
        return untyped __js__('_this[i]');
    }
    @:arrayAccess inline public function set(i:Int, x:Float):Float {
        var _this = this;
        return untyped __js__('_this[i] = x');
    }
}

typedef Rectangle = VArray;
typedef Point = VArray;
typedef RGBA = VArray;
