package turbulenz;

import turbulenz.util.TZArray;

typedef Ray<T> = {
    direction: T,
    maxFactor: Float,
    origin   : T
};

abstract Vector2(TZArray<Float32>) from TZArray<Float32> to TZArray<Float32> {
    public var x(get,set):Float;
    public var y(get,set):Float;
    inline function get_x():Float return this[0];
    inline function get_y():Float return this[1];
    inline function set_x(x:Float):Float return this[0] = x;
    inline function set_y(y:Float):Float return this[1] = y;

    public var s(get,set):Float;
    public var t(get,set):Float;
    inline function get_s():Float return this[0];
    inline function get_t():Float return this[1];
    inline function set_s(s:Float):Float return this[0] = s;
    inline function set_t(t:Float):Float return this[1] = t;

    public var r(get,set):Float;
    public var g(get,set):Float;
    inline function get_r():Float return this[0];
    inline function get_g():Float return this[1];
    inline function set_r(r:Float):Float return this[0] = r;
    inline function set_g(g:Float):Float return this[1] = g;

    @:arrayAccess public inline function get(i:Int):Float return this[i];
    @:arrayAccess public inline function set(i:Int,x:Float):Float return this[i] = x;

    public inline function toString()
        return 'v2($x,$y)';
}

abstract Vector3(TZArray<Float32>) from TZArray<Float32> to TZArray<Float32> {
    public var x(get,set):Float;
    public var y(get,set):Float;
    public var z(get,set):Float;
    inline function get_x():Float return this[0];
    inline function get_y():Float return this[1];
    inline function get_z():Float return this[2];
    inline function set_x(x:Float):Float return this[0] = x;
    inline function set_y(y:Float):Float return this[1] = y;
    inline function set_z(z:Float):Float return this[2] = z;

    public var s(get,set):Float;
    public var t(get,set):Float;
    public var p(get,set):Float;
    inline function get_s():Float return this[0];
    inline function get_t():Float return this[1];
    inline function get_p():Float return this[2];
    inline function set_s(s:Float):Float return this[0] = s;
    inline function set_t(t:Float):Float return this[1] = t;
    inline function set_p(p:Float):Float return this[2] = p;

    public var r(get,set):Float;
    public var g(get,set):Float;
    public var b(get,set):Float;
    inline function get_r():Float return this[0];
    inline function get_g():Float return this[1];
    inline function get_b():Float return this[2];
    inline function set_r(r:Float):Float return this[0] = r;
    inline function set_g(g:Float):Float return this[1] = g;
    inline function set_b(b:Float):Float return this[2] = b;

    @:arrayAccess public inline function get(i:Int):Float return this[i];
    @:arrayAccess public inline function set(i:Int,x:Float):Float return this[i] = x;

    public inline function toString()
        return 'v3($x,$y,$z)';
}

abstract Vector4(TZArray<Float32>) from TZArray<Float32> to TZArray<Float32> {
    public var x(get,set):Float;
    public var y(get,set):Float;
    public var z(get,set):Float;
    public var w(get,set):Float;
    inline function get_x():Float return this[0];
    inline function get_y():Float return this[1];
    inline function get_z():Float return this[2];
    inline function get_w():Float return this[3];
    inline function set_x(x:Float):Float return this[0] = x;
    inline function set_y(y:Float):Float return this[1] = y;
    inline function set_z(z:Float):Float return this[2] = z;
    inline function set_w(w:Float):Float return this[3] = w;

    public var s(get,set):Float;
    public var t(get,set):Float;
    public var p(get,set):Float;
    public var q(get,set):Float;
    inline function get_s():Float return this[0];
    inline function get_t():Float return this[1];
    inline function get_p():Float return this[2];
    inline function get_q():Float return this[3];
    inline function set_s(s:Float):Float return this[0] = s;
    inline function set_t(t:Float):Float return this[1] = t;
    inline function set_p(p:Float):Float return this[2] = p;
    inline function set_q(q:Float):Float return this[3] = q;

    public var r(get,set):Float;
    public var g(get,set):Float;
    public var b(get,set):Float;
    public var a(get,set):Float;
    inline function get_r():Float return this[0];
    inline function get_g():Float return this[1];
    inline function get_b():Float return this[2];
    inline function get_a():Float return this[3];
    inline function set_r(r:Float):Float return this[0] = r;
    inline function set_g(g:Float):Float return this[1] = g;
    inline function set_b(b:Float):Float return this[2] = b;
    inline function set_a(a:Float):Float return this[3] = a;

    @:arrayAccess public inline function get(i:Int):Float return this[i];
    @:arrayAccess public inline function set(i:Int,x:Float):Float return this[i] = x;

    public inline function toString()
        return 'v4($x,$y,$z,$w)';
}

abstract Box(TZArray<Float32>) from TZArray<Float32> to TZArray<Float32> {
    inline public function slice(from:Int, to:Int):TZArray<Float32>
        return untyped __js__("(function (from, to) {
            return this.slice(from, to);
        })").call(this, from, to);

    public var xMin(get,set):Float;
    public var yMin(get,set):Float;
    public var xMax(get,set):Float;
    public var yMax(get,set):Float;
    inline function get_xMin():Float return this[0];
    inline function get_yMin():Float return this[1];
    inline function get_xMax():Float return this[2];
    inline function get_yMax():Float return this[3];
    inline function set_xMin(x:Float):Float return this[0] = x;
    inline function set_yMin(y:Float):Float return this[1] = y;
    inline function set_xMax(x:Float):Float return this[2] = x;
    inline function set_yMax(y:Float):Float return this[3] = y;

    @:arrayAccess public inline function get(i:Int):Float return this[i];
    @:arrayAccess public inline function set(i:Int,x:Float):Float return this[i] = x;

    public inline function toString()
        return 'box($xMin,$yMin, $xMax,$yMax)';
}

abstract AABB(TZArray<Float32>) from TZArray<Float32> to TZArray<Float32> {
    inline public function slice(from:Int, to:Int):TZArray<Float32>
        return untyped __js__("(function (from, to) {
            return this.slice(from, to);
        })").call(this, from, to);

    public var xMin(get,set):Float;
    public var yMin(get,set):Float;
    public var zMin(get,set):Float;
    public var xMax(get,set):Float;
    public var yMax(get,set):Float;
    public var zMax(get,set):Float;
    inline function get_xMin():Float return this[0];
    inline function get_yMin():Float return this[1];
    inline function get_zMin():Float return this[2];
    inline function get_xMax():Float return this[3];
    inline function get_yMax():Float return this[4];
    inline function get_zMax():Float return this[5];
    inline function set_xMin(x:Float):Float return this[0] = x;
    inline function set_yMin(y:Float):Float return this[1] = y;
    inline function set_zMin(z:Float):Float return this[2] = z;
    inline function set_xMax(x:Float):Float return this[3] = x;
    inline function set_yMax(y:Float):Float return this[4] = y;
    inline function set_zMax(z:Float):Float return this[5] = z;

    @:arrayAccess public inline function get(i:Int):Float return this[i];
    @:arrayAccess public inline function set(i:Int,x:Float):Float return this[i] = x;

    public inline function toString()
        return 'aabb($xMin,$yMin,$zMin, $xMax,$yMax,$zMax)';
}

abstract RGBA(Vector4) from Vector4 to Vector4 from TZArray<Float32> to TZArray<Float32> {
    public var r(get,set):Float;
    public var g(get,set):Float;
    public var b(get,set):Float;
    public var a(get,set):Float;
    inline function get_r():Float return this[0];
    inline function get_g():Float return this[1];
    inline function get_b():Float return this[2];
    inline function get_a():Float return this[3];
    inline function set_r(r:Float):Float return this[0] = r;
    inline function set_g(g:Float):Float return this[1] = g;
    inline function set_b(b:Float):Float return this[2] = b;
    inline function set_a(a:Float):Float return this[3] = a;

    @:arrayAccess public inline function get(i:Int):Float return this[i];
    @:arrayAccess public inline function set(i:Int,x:Float):Float return this[i] = x;

    public inline function toString()
        return 'rgba($r,$g,$b,$a)';
}


// TODO
typedef Quaternion = Vector4;
typedef QuaternionPosition = TZArray<Float32>;

abstract Matrix33(TZArray<Float32>) from TZArray<Float32> to TZArray<Float32> {
    public var a(get,set):Float;
    public var b(get,set):Float;
    public var c(get,set):Float;
    public var d(get,set):Float;
    public var e(get,set):Float;
    public var f(get,set):Float;
    public var g(get,set):Float;
    public var h(get,set):Float;
    public var i(get,set):Float;

    public var m11(get,set):Float;
    public var m12(get,set):Float;
    public var m13(get,set):Float;
    public var m21(get,set):Float;
    public var m22(get,set):Float;
    public var m23(get,set):Float;
    public var m31(get,set):Float;
    public var m32(get,set):Float;
    public var m33(get,set):Float;

    inline function get_a():Float return this[0];
    inline function get_b():Float return this[1];
    inline function get_c():Float return this[2];
    inline function get_d():Float return this[3];
    inline function get_e():Float return this[4];
    inline function get_f():Float return this[5];
    inline function get_g():Float return this[6];
    inline function get_h():Float return this[7];
    inline function get_i():Float return this[8];
    inline function set_a(a:Float):Float return this[0] = a;
    inline function set_b(b:Float):Float return this[1] = b;
    inline function set_c(c:Float):Float return this[2] = c;
    inline function set_d(d:Float):Float return this[3] = d;
    inline function set_e(e:Float):Float return this[4] = e;
    inline function set_f(f:Float):Float return this[5] = f;
    inline function set_g(g:Float):Float return this[6] = g;
    inline function set_h(h:Float):Float return this[7] = h;
    inline function set_i(i:Float):Float return this[8] = i;

    inline function get_m11():Float return this[0];
    inline function get_m12():Float return this[1];
    inline function get_m13():Float return this[2];
    inline function get_m21():Float return this[3];
    inline function get_m22():Float return this[4];
    inline function get_m23():Float return this[5];
    inline function get_m31():Float return this[6];
    inline function get_m32():Float return this[7];
    inline function get_m33():Float return this[8];
    inline function set_m11(m11:Float):Float return this[0] = m11;
    inline function set_m12(m12:Float):Float return this[1] = m12;
    inline function set_m13(m13:Float):Float return this[2] = m13;
    inline function set_m21(m21:Float):Float return this[3] = m21;
    inline function set_m22(m22:Float):Float return this[4] = m22;
    inline function set_m23(m23:Float):Float return this[5] = m23;
    inline function set_m31(m31:Float):Float return this[6] = m31;
    inline function set_m32(m32:Float):Float return this[7] = m32;
    inline function set_m33(m33:Float):Float return this[8] = m33;

    public inline function toString() return
        'm33($a,$b,$c, $d,$e,$f, $g,$h,$i)';
}

abstract Matrix34(TZArray<Float32>) from TZArray<Float32> to TZArray<Float32> {
    public var a(get,set):Float;
    public var b(get,set):Float;
    public var c(get,set):Float;
    public var d(get,set):Float;
    public var e(get,set):Float;
    public var f(get,set):Float;
    public var g(get,set):Float;
    public var h(get,set):Float;
    public var i(get,set):Float;
    public var j(get,set):Float;
    public var k(get,set):Float;
    public var l(get,set):Float;

    public var m11(get,set):Float;
    public var m12(get,set):Float;
    public var m13(get,set):Float;
    public var m14(get,set):Float;
    public var m21(get,set):Float;
    public var m22(get,set):Float;
    public var m23(get,set):Float;
    public var m24(get,set):Float;
    public var m31(get,set):Float;
    public var m32(get,set):Float;
    public var m33(get,set):Float;
    public var m34(get,set):Float;

    inline function get_a():Float return this[0];
    inline function get_b():Float return this[1];
    inline function get_c():Float return this[2];
    inline function get_d():Float return this[3];
    inline function get_e():Float return this[4];
    inline function get_f():Float return this[5];
    inline function get_g():Float return this[6];
    inline function get_h():Float return this[7];
    inline function get_i():Float return this[8];
    inline function get_j():Float return this[9];
    inline function get_k():Float return this[10];
    inline function get_l():Float return this[11];
    inline function set_a(a:Float):Float return this[0]  = a;
    inline function set_b(b:Float):Float return this[1]  = b;
    inline function set_c(c:Float):Float return this[2]  = c;
    inline function set_d(d:Float):Float return this[3]  = d;
    inline function set_e(e:Float):Float return this[4]  = e;
    inline function set_f(f:Float):Float return this[5]  = f;
    inline function set_g(g:Float):Float return this[6]  = g;
    inline function set_h(h:Float):Float return this[7]  = h;
    inline function set_i(i:Float):Float return this[8]  = i;
    inline function set_j(j:Float):Float return this[9]  = j;
    inline function set_k(k:Float):Float return this[10] = k;
    inline function set_l(l:Float):Float return this[11] = l;

    inline function get_m11():Float return this[0];
    inline function get_m12():Float return this[1];
    inline function get_m13():Float return this[2];
    inline function get_m14():Float return this[3];
    inline function get_m21():Float return this[4];
    inline function get_m22():Float return this[5];
    inline function get_m23():Float return this[6];
    inline function get_m24():Float return this[7];
    inline function get_m31():Float return this[8];
    inline function get_m32():Float return this[9];
    inline function get_m33():Float return this[10];
    inline function get_m34():Float return this[11];
    inline function set_m11(m11:Float):Float return this[0]  = m11;
    inline function set_m12(m12:Float):Float return this[1]  = m12;
    inline function set_m13(m13:Float):Float return this[2]  = m13;
    inline function set_m14(m14:Float):Float return this[3]  = m14;
    inline function set_m21(m21:Float):Float return this[4]  = m21;
    inline function set_m22(m22:Float):Float return this[5]  = m22;
    inline function set_m23(m23:Float):Float return this[6]  = m23;
    inline function set_m24(m24:Float):Float return this[7]  = m24;
    inline function set_m31(m31:Float):Float return this[8]  = m31;
    inline function set_m32(m32:Float):Float return this[9]  = m32;
    inline function set_m33(m33:Float):Float return this[10] = m33;
    inline function set_m34(m34:Float):Float return this[11] = m34;

    public inline function toString() return
        'm34($a,$b,$c,$d, $e,$f,$g,$h, $i,$j,$k,$l)';
}

abstract Matrix43(TZArray<Float32>) from TZArray<Float32> to TZArray<Float32> {
    public var a(get,set):Float;
    public var b(get,set):Float;
    public var c(get,set):Float;
    public var d(get,set):Float;
    public var e(get,set):Float;
    public var f(get,set):Float;
    public var g(get,set):Float;
    public var h(get,set):Float;
    public var i(get,set):Float;
    public var j(get,set):Float;
    public var k(get,set):Float;
    public var l(get,set):Float;

    public var m11(get,set):Float;
    public var m12(get,set):Float;
    public var m13(get,set):Float;
    public var m21(get,set):Float;
    public var m22(get,set):Float;
    public var m23(get,set):Float;
    public var m31(get,set):Float;
    public var m32(get,set):Float;
    public var m33(get,set):Float;
    public var m41(get,set):Float;
    public var m42(get,set):Float;
    public var m43(get,set):Float;

    inline function get_a():Float return this[0];
    inline function get_b():Float return this[1];
    inline function get_c():Float return this[2];
    inline function get_d():Float return this[3];
    inline function get_e():Float return this[4];
    inline function get_f():Float return this[5];
    inline function get_g():Float return this[6];
    inline function get_h():Float return this[7];
    inline function get_i():Float return this[8];
    inline function get_j():Float return this[9];
    inline function get_k():Float return this[10];
    inline function get_l():Float return this[11];
    inline function set_a(a:Float):Float return this[0]  = a;
    inline function set_b(b:Float):Float return this[1]  = b;
    inline function set_c(c:Float):Float return this[2]  = c;
    inline function set_d(d:Float):Float return this[3]  = d;
    inline function set_e(e:Float):Float return this[4]  = e;
    inline function set_f(f:Float):Float return this[5]  = f;
    inline function set_g(g:Float):Float return this[6]  = g;
    inline function set_h(h:Float):Float return this[7]  = h;
    inline function set_i(i:Float):Float return this[8]  = i;
    inline function set_j(j:Float):Float return this[9]  = j;
    inline function set_k(k:Float):Float return this[10] = k;
    inline function set_l(l:Float):Float return this[11] = l;

    inline function get_m11():Float return this[0];
    inline function get_m12():Float return this[1];
    inline function get_m13():Float return this[2];
    inline function get_m21():Float return this[3];
    inline function get_m22():Float return this[4];
    inline function get_m23():Float return this[5];
    inline function get_m31():Float return this[6];
    inline function get_m32():Float return this[7];
    inline function get_m33():Float return this[8];
    inline function get_m41():Float return this[9];
    inline function get_m42():Float return this[10];
    inline function get_m43():Float return this[11];
    inline function set_m11(m11:Float):Float return this[0]  = m11;
    inline function set_m12(m12:Float):Float return this[1]  = m12;
    inline function set_m13(m13:Float):Float return this[2]  = m13;
    inline function set_m21(m21:Float):Float return this[3]  = m21;
    inline function set_m22(m22:Float):Float return this[4]  = m22;
    inline function set_m23(m23:Float):Float return this[5]  = m23;
    inline function set_m31(m31:Float):Float return this[6]  = m31;
    inline function set_m32(m32:Float):Float return this[7]  = m32;
    inline function set_m33(m33:Float):Float return this[8]  = m33;
    inline function set_m41(m41:Float):Float return this[9]  = m41;
    inline function set_m42(m42:Float):Float return this[10] = m42;
    inline function set_m43(m43:Float):Float return this[11] = m43;

    public inline function toString() return
        'm43($a,$b,$c, $d,$e,$f, $g,$h,$i, $j,$k,$l)';
}

abstract Matrix44(TZArray<Float32>) from TZArray<Float32> to TZArray<Float32> {
    public var a(get,set):Float;
    public var b(get,set):Float;
    public var c(get,set):Float;
    public var d(get,set):Float;
    public var e(get,set):Float;
    public var f(get,set):Float;
    public var g(get,set):Float;
    public var h(get,set):Float;
    public var i(get,set):Float;
    public var j(get,set):Float;
    public var k(get,set):Float;
    public var l(get,set):Float;
    public var m(get,set):Float;
    public var n(get,set):Float;
    public var o(get,set):Float;
    public var p(get,set):Float;

    public var m11(get,set):Float;
    public var m12(get,set):Float;
    public var m13(get,set):Float;
    public var m14(get,set):Float;
    public var m21(get,set):Float;
    public var m22(get,set):Float;
    public var m23(get,set):Float;
    public var m24(get,set):Float;
    public var m31(get,set):Float;
    public var m32(get,set):Float;
    public var m33(get,set):Float;
    public var m34(get,set):Float;
    public var m41(get,set):Float;
    public var m42(get,set):Float;
    public var m43(get,set):Float;
    public var m44(get,set):Float;

    inline function get_a():Float return this[0];
    inline function get_b():Float return this[1];
    inline function get_c():Float return this[2];
    inline function get_d():Float return this[3];
    inline function get_e():Float return this[4];
    inline function get_f():Float return this[5];
    inline function get_g():Float return this[6];
    inline function get_h():Float return this[7];
    inline function get_i():Float return this[8];
    inline function get_j():Float return this[9];
    inline function get_k():Float return this[10];
    inline function get_l():Float return this[11];
    inline function get_m():Float return this[12];
    inline function get_n():Float return this[13];
    inline function get_o():Float return this[14];
    inline function get_p():Float return this[15];
    inline function set_a(a:Float):Float return this[0]  = a;
    inline function set_b(b:Float):Float return this[1]  = b;
    inline function set_c(c:Float):Float return this[2]  = c;
    inline function set_d(d:Float):Float return this[3]  = d;
    inline function set_e(e:Float):Float return this[4]  = e;
    inline function set_f(f:Float):Float return this[5]  = f;
    inline function set_g(g:Float):Float return this[6]  = g;
    inline function set_h(h:Float):Float return this[7]  = h;
    inline function set_i(i:Float):Float return this[8]  = i;
    inline function set_j(j:Float):Float return this[9]  = j;
    inline function set_k(k:Float):Float return this[10] = k;
    inline function set_l(l:Float):Float return this[11] = l;
    inline function set_m(m:Float):Float return this[12] = m;
    inline function set_n(n:Float):Float return this[13] = n;
    inline function set_o(o:Float):Float return this[14] = o;
    inline function set_p(p:Float):Float return this[15] = p;

    inline function get_m11():Float return this[0];
    inline function get_m12():Float return this[1];
    inline function get_m13():Float return this[2];
    inline function get_m14():Float return this[3];
    inline function get_m21():Float return this[4];
    inline function get_m22():Float return this[5];
    inline function get_m23():Float return this[6];
    inline function get_m24():Float return this[7];
    inline function get_m31():Float return this[8];
    inline function get_m32():Float return this[9];
    inline function get_m33():Float return this[10];
    inline function get_m34():Float return this[11];
    inline function get_m41():Float return this[12];
    inline function get_m42():Float return this[13];
    inline function get_m43():Float return this[14];
    inline function get_m44():Float return this[15];
    inline function set_m11(m11:Float):Float return this[0]  = m11;
    inline function set_m12(m12:Float):Float return this[1]  = m12;
    inline function set_m13(m13:Float):Float return this[2]  = m13;
    inline function set_m14(m14:Float):Float return this[3]  = m14;
    inline function set_m21(m21:Float):Float return this[4]  = m21;
    inline function set_m22(m22:Float):Float return this[5]  = m22;
    inline function set_m23(m23:Float):Float return this[6]  = m23;
    inline function set_m24(m24:Float):Float return this[7]  = m24;
    inline function set_m31(m31:Float):Float return this[8]  = m31;
    inline function set_m32(m32:Float):Float return this[9]  = m32;
    inline function set_m33(m33:Float):Float return this[10] = m33;
    inline function set_m34(m34:Float):Float return this[11] = m34;
    inline function set_m41(m41:Float):Float return this[12] = m41;
    inline function set_m42(m42:Float):Float return this[13] = m42;
    inline function set_m43(m43:Float):Float return this[14] = m43;
    inline function set_m44(m44:Float):Float return this[15] = m44;

    public inline function toString() return
        'm44($a,$b,$c,$d, $e,$f,$g,$h, $i,$j,$k,$l, $m,$n,$o,$p)';
}

@:native("MathDevice")
@:publicFields
extern class MathDevice {
    var FLOAT_MAX(default,never):Float;

    function aabbAddPoints(aabb:AABB, points:Array<Vector3>):AABB;
    function aabbBuildEmpty(?dst:AABB):AABB;
    function aabbBuild(minX:Float, minY:Float, minZ:Float, maxX:Float, maxY:Float, maxZ:Float, ?dst:AABB):AABB;
    function aabbCopy(aabb:AABB, ?dst:AABB):AABB;
    function aabbGetCenterAndHalf(aabb:AABB, outCenter:Vector3, outHalfExtents:Vector3):Void;
    function aabbIntercept(aabbA:AABB, aabbB:AABB, ?dst:AABB):AABB;
    function aabbIsEmpty(aabb:AABB):Bool;
    function aabbIsFullyInsidePlanes(aabb:AABB, planes:Array<Vector4>):Bool;
    function aabbIsInside(aabbA:AABB, aabbB:AABB):Bool;
    function aabbIsInsidePlanes(aabb:AABB, planes:Array<Vector4>):Bool;
    function aabbOverlaps(aabbA:AABB, aabbB:AABB):Bool;
    function aabbSphereOverlaps(aabb:AABB, center:Vector3, radius:Float):Bool;
    function aabbTestInside(aabbA:AABB, aabbB:AABB):Int;
    function aabbTransform(aabb:AABB, matrix:Matrix43, ?dst:AABB):AABB;
    function aabbUnion(aabbA:AABB, aabbB:AABB, ?dst:AABB):AABB;
    function aabbUnionArray(aabbs:Array<AABB>, ?dst:AABB):AABB;
    function m33At(m:Matrix33, ?dst:Vector3):Vector3;
    @:overload(function (a:Float, b:Float, c:Float,
                         d:Float, e:Float, f:Float,
                         g:Float, h:Float, i:Float, ?dst:Matrix33):Matrix33 {})
    function m33Build(right:Vector3, up:Vector3, at:Vector3, ?dst:Matrix33):Matrix33;
    function m33BuildIdentity():Matrix33;
    function m33Copy(m:Matrix33, ?dst:Matrix33):Matrix33;
    function m33Determinant(m:Matrix33):Float;
    function m33FromAxisRotation(axis:Vector3, rot:Float, ?dst:Matrix33):Matrix33;
    function m33FromQuat(quat:Quaternion, ?dst:Matrix33):Matrix33;
    function m33InverseTranspose(m:Matrix33, ?dst:Matrix33):Matrix33;
    @:overload(function(mA:Matrix43, mB:Matrix43, ?dst:Matrix43):Matrix43 {})
        function m33MulM43(mA:Matrix33, mB:Matrix43, ?dst:Matrix43):Matrix43;
    function m33MulM44(mA:Matrix33, mB:Matrix44, ?dst:Matrix44):Matrix44;
    function m33Mul(mA:Matrix33, mB:Matrix33, ?dst:Matrix33):Matrix33;
    function m33Right(m:Matrix33, ?dst:Vector3):Vector3;
    function m33SetAt(m:Matrix33, v:Vector3):Void;
    function m33SetRight(m:Matrix33, v:Vector3):Void;
    function m33SetUp(m:Matrix33, v:Vector3):Void;
    function m33Transform(m:Matrix33, v:Vector3, ?dst:Vector3):Vector3;
    function m33Transpose(m:Matrix33, ?dst:Matrix33):Matrix33;
    function m33Up(m:Matrix33, ?dst:Vector3):Vector3;
    function m34BuildIdentity(?dst:Matrix34):Matrix34;
    function m34Pos(m:Matrix34, ?dst:Vector3):Vector3;
    function m43At(matrix:Matrix43, ?dst:Vector3):Vector3;
    @:overload(function (a:Float, b:Float, c:Float,
                         d:Float, e:Float, f:Float,
                         g:Float, h:Float, i:Float,
                         j:Float, k:Float, l:Float, ?dst:Matrix43):Matrix43 {})
        function m43Build(right:Vector3, up:Vector3, at:Vector3, pos:Vector3, ?dst:Matrix43):Matrix43;
    function m43BuildIdentity(?dst:Matrix43):Matrix43;
    function m43Copy(m:Matrix43, ?dst:Matrix43):Matrix43;
    function m43Determinant(matrix:Matrix43):Float;
    function m43FromAxisRotation(vector:Vector3, scalar:Float, ?dst:Matrix43):Matrix43;
    function m43FromM33V3(matrix:Matrix33, vector:Vector3, ?dst:Matrix43):Matrix43;
    function m43FromQuatPos(quatPos:QuaternionPosition, ?dst:Matrix43):Matrix43;
    function m43FromRT(quat:Quaternion, vector:Vector3, ?dst:Matrix43):Matrix43;
    function m43FromRTS(quat:Quaternion, vector:Vector3, scalar:Float, ?dst:Matrix43):Matrix43;
    function m43Inverse(matrix:Matrix43, ?dst:Matrix43):Matrix43;
    function m43InverseOrthonormal(matrix:Matrix43, ?dst:Matrix43):Matrix43;
    function m43InverseTransposeProjection(matrix:Matrix43, vector:Vector3, ?dst:Matrix34):Matrix34;
    function m43MulM44(matrixA:Matrix43, matrixB:Matrix44, ?dst:Matrix44):Matrix44;
    function m43Mul(matrixA:Matrix43, matrixB:Matrix43, ?dst:Matrix43):Matrix43;
    function m43MulTranspose(matrixA:Matrix43, matrixB:Matrix43, ?dst:Matrix43):Matrix43;
    function m43NegOffset(matrix:Matrix43, vector:Vector3, ?dst:Matrix43):Matrix43;
    function m43Offset(matrix:Matrix43, vector:Vector3, ?dst:Matrix43):Matrix43;
    function m43Orthnormalize(matrix:Matrix43, ?dst:Matrix43):Matrix43;
    function m43Pos(matrix:Matrix43, ?dst:Vector3):Vector3;
    function m43Right(matrix:Matrix43, ?dst:Vector3):Vector3;
    function m43Scale(matrix:Matrix43, vector:Vector3, ?dst:Matrix43):Matrix43;
    function m43SetAt(matrix:Matrix43, vector:Vector3):Void;
    function m43SetAxisRotation(matrix:Matrix43, vector:Vector3, scalar:Float):Void;
    function m43SetPos(matrix:Matrix43, vector:Vector3):Void;
    function m43SetRight(matrix:Matrix43, vector:Vector3):Void;
    function m43SetUp(matrix:Matrix43, vector:Vector3):Void;
    function m43TransformPoint(matrix:Matrix43, vector:Vector3, ?dst:Vector3):Vector3;
    function m43TransformVector(matrix:Matrix43, vector:Vector3, ?dst:Vector3):Vector3;
    function m43Translate(matrix:Matrix43, vector:Vector3):Void;
    function m43Transpose(matrix:Matrix43, ?dst:Matrix34):Matrix34;
    function m43Up(matrix:Matrix43, ?dst:Vector3):Vector3;
    function m44At(matrix:Matrix44, ?dst:Vector4):Vector4;
    @:overload(function (a:Float, b:Float, c:Float, d:Float,
                         e:Float, f:Float, g:Float, h:Float,
                         i:Float, j:Float, k:Float, l:Float,
                         m:Float, n:Float, o:Float, p:Float, ?dst:Matrix44):Matrix44 {})
    function m44Build(right:Vector4, up:Vector4, at:Vector4, pos:Vector4, ?dst:Matrix44):Matrix44;
    function m44BuildIdentity(?dst:Matrix44):Matrix44;
    @:overload(function (x:Float, y:Float, z:Float, ?dst:Matrix43):Matrix43 {})
    function m43BuildTranslation(t:Vector3, ?dst:Matrix43):Matrix43;
    function m44Copy(matrix:Matrix44, ?dst:Matrix44):Matrix44;
    function m44Inverse(matrix:Matrix44, ?dst:Matrix44):Matrix44;
    function m44Mul(matrixA:Matrix44, matrixB:Matrix44, ?dst:Matrix44):Matrix44;
    function m44Pos(matrix:Matrix44, ?dst:Vector4):Vector4;
    function m44Right(matrix:Matrix44, ?dst:Vector4):Vector4;
    function m44Scale(matrix:Matrix44, vector:Vector3, ?dst:Matrix44):Matrix44;
    function m44SetAt(matrix:Matrix44, vector:Vector4):Void;
    function m44SetPos(matrix:Matrix44, vector:Vector4):Void;
    function m44SetRight(matrix:Matrix44, vector:Vector4):Void;
    function m44SetUp(matrix:Matrix44, vector:Vector4):Void;
    function m44Transform(matrix:Matrix44, vector:Vector4, ?dst:Vector4):Vector4;
    function m44Translate(matrix:Matrix44, vector:Vector4):Void;
    function m44Transpose(matrix:Matrix44, ?dst:Matrix44):Matrix44;
    function m44Up(matrix:Matrix44, ?dst:Vector4):Vector4;
    function planeNormalize(plane:Vector4, ?dst:Vector4):Vector4;
    function quatBuild(a:Float, b:Float, c:Float, d:Float, ?dst:Quaternion):Quaternion;
    function quatConjugate(q:Quaternion, ?dst:Quaternion):Quaternion;
    function quatCopy(q:Quaternion, ?dst:Quaternion):Quaternion;
    function quatDot(qA:Quaternion, qB:Quaternion):Float;
    function quatEqual(qA:Quaternion, qB:Quaternion, ?precision:Float):Bool;
    function quatFromAxisRotation(axis:Vector3, rot:Float, ?dst:Quaternion):Quaternion;
    function quatFromM43(matrix:Matrix43, ?dst:Quaternion):Quaternion;
    function quatIsSimilar(qA:Quaternion, qB:Quaternion, ?precision:Float):Bool;
    function quatLength(q:Quaternion):Float;
    function quatLerp(qA:Quaternion, qB:Quaternion, x:Float, ?dst:Quaternion):Quaternion;
    function quatMul(qA:Quaternion, qB:Quaternion, ?dst:Quaternion):Quaternion;
    function quatMulTranslate(qA:Quaternion, vA:Vector3, qB:Quaternion, vB:Vector3, qOut:Quaternion, vOut:Vector3):Void;
    function quatNormalize(q:Quaternion, ?dst:Quaternion):Quaternion;
    @:overload(function (a:Float, b:Float, c:Float, d:Float, v3a:Float, v3b:Float, v3c:Float, ?dst:QuaternionPosition):QuaternionPosition {})
        function quadPosBuild(q:Quaternion, pos:Vector3, ?dst:QuaternionPosition):QuaternionPosition;
    function quatSlerp(qA:Quaternion, qB:Quaternion, x:Float, ?dst:Quaternion):Quaternion;
    function quatToAxisRotation(q:Quaternion, ?dst:Vector4):Vector4;
    function quatTransformVector(q:Quaternion, vec:Vector3, ?dst:Vector3):Vector3;
    function truncate(x:Float):Int;
    function v2Abs(vec:Vector2, ?dst:Vector2):Vector2;
    function v2Add3(vecA:Vector2, vecB:Vector2, vecC:Vector2, ?dst:Vector2):Vector2;
    function v2Add4(vecA:Vector2, vecB:Vector2, vecC:Vector2, vecD:Vector2, ?dst:Vector2):Vector2;
    function v2AddScalarMul(vecAdd:Vector2, vecMul:Vector2, x:Float, ?dst:Vector2):Vector2;
    function v2Add(vecA:Vector2, vecB:Vector2, ?dst:Vector2):Vector2;
    function v2BuildOne(?dst:Vector2):Vector2;
    function v2BuildXAxis(?dst:Vector2):Vector2;
    function v2Build(x:Float, y:Float, ?dst:Vector2):Vector2;
    function v2BuildYAxis(?dst:Vector2):Vector2;
    function v2BuildZero(?dst:Vector2):Vector2;
    function v2CatmullRom(t:Float, tension:Float, vecA:Vector2, vecB:Vector2, vecC:Vector2, vecD:Vector2, ?dst:Vector2):Vector2;
    function v2Copy(vec:Vector2, ?dst:Vector2):Vector2;
    function v2Dot(vecA:Vector2, vecB:Vector2):Float;
    function v2Equal(vecA:Vector2, vecB:Vector2, ?precision:Float):Bool;
    function v2LengthSq(vec:Vector2):Float;
    function v2Length(vec:Vector2):Float;
    function v2Lerp(vecA:Vector2, vecB:Vector2, x:Float, ?dst:Vector2):Vector2;
    function v2Max(vecA:Vector2, vecB:Vector2, ?dst:Vector2):Vector2;
    function v2Min(vecA:Vector2, vecB:Vector2, ?dst:Vector2):Vector2;
    function v2MulAdd(vecMulA:Vector2, vecMulB:Vector2, vecAdd:Vector2, ?dst:Vector2):Vector2;
    function v2Mul(vecA:Vector2, vecB:Vector2, ?dst:Vector2):Vector2;
    function v2Neg(vec:Vector2, ?dst:Vector2):Vector2;
    function v2Normalize(vec:Vector2, ?dst:Vector2):Vector2;
    function v2PerpDot(vecA:Vector2, vecB:Vector2):Float;
    function v2Reciprocal(vec:Vector2, ?dst:Vector2):Vector2;
    function v2ScalarAdd(vec:Vector2, x:Float, ?dst:Vector2):Vector2;
    function v2ScalarBuild(x:Float, ?dst:Vector2):Vector2;
    function v2ScalarMul(vec:Vector2, x:Float, ?dst:Vector2):Vector2;
    function v2ScalarSub(vec:Vector2, x:Float, ?dst:Vector2):Vector2;
    function v2Sub(vecA:Vector2, vecB:Vector2, ?dst:Vector2):Vector2;
    function v3Abs(vec:Vector3, ?dst:Vector3):Vector3;
    function v3Add3(vecA:Vector3, vecB:Vector3, vecC:Vector3, ?dst:Vector3):Vector3;
    function v3Add4(vecA:Vector3, vecB:Vector3, vecC:Vector3, vecD:Vector3, ?dst:Vector3):Vector3;
    function v3AddScalarMul(vecAdd:Vector3, vecMul:Vector3, x:Float, ?dst:Vector3):Vector3;
    function v3Add(vecA:Vector3, vecB:Vector3, ?dst:Vector3):Vector3;
    function v3BuildOne(?dst:Vector3):Vector3;
    function v3BuildXAxis(?dst:Vector3):Vector3;
    function v3Build(x:Float, y:Float, z:Float, ?dst:Vector3):Vector3;
    function v3BuildYAxis(?dst:Vector3):Vector3;
    function v3BuildZAxis(?dst:Vector3):Vector3;
    function v3BuildZero(?dst:Vector3):Vector3;
    function v3CatmullRom(t:Float, tension:Float, vecA:Vector3, vecB:Vector3, vecC:Vector3, vecD:Vector3, ?dst:Vector3):Vector3;
    function v3Copy(vec:Vector3, ?dst:Vector3):Vector3;
    function v3Cross(vecA:Vector3, vecB:Vector3, ?dst:Vector3):Vector3;
    function v3Dot(vecA:Vector3, vecB:Vector3):Float;
    function v3Equal(vecA:Vector3, vecB:Vector3, ?precision:Float):Bool;
    function v3LengthSq(vec:Vector3):Float;
    function v3Length(vec:Vector3):Float;
    function v3Lerp(vecA:Vector3, vecB:Vector3, x:Float, ?dst:Vector3):Vector3;
    function v3Max(vecA:Vector3, vecB:Vector3, ?dst:Vector3):Vector3;
    function v3Min(vecA:Vector3, vecB:Vector3, ?dst:Vector3):Vector3;
    function v3MulAdd(vecMulA:Vector3, vecMulB:Vector3, vecAdd:Vector3, ?dst:Vector3):Vector3;
    function v3Mul(vecA:Vector3, vecB:Vector3, ?dst:Vector3):Vector3;
    function v3Neg(vec:Vector3, ?dst:Vector3):Vector3;
    function v3Normalize(vec:Vector3, ?dst:Vector3):Vector3;
    function v3Reciprocal(vec:Vector3, ?dst:Vector3):Vector3;
    function v3ScalarAdd(vec:Vector3, x:Float, ?dst:Vector3):Vector3;
    function v3ScalarBuild(x:Float, ?dst:Vector3):Vector3;
    function v3ScalarMul(vec:Vector3, x:Float, ?dst:Vector3):Vector3;
    function v3ScalarSub(vec:Vector3, x:Float, ?dst:Vector3):Vector3;
    function v3Sub(vecA:Vector3, vecB:Vector3, ?dst:Vector3):Vector3;
    function v4Abs(vec:Vector4, ?dst:Vector4):Vector4;
    function v4Add3(vecA:Vector4, vecB:Vector4, vecC:Vector4, ?dst:Vector4):Vector4;
    function v4Add4(vecA:Vector4, vecB:Vector4, vecC:Vector4, vecD:Vector4, ?dst:Vector4):Vector4;
    function v4AddScalarMul(vecAdd:Vector4, vecMul:Vector4, x:Float, ?dst:Vector4):Vector4;
    function v4Add(vecA:Vector4, vecB:Vector4, ?dst:Vector4):Vector4;
    function v4BuildOne(?dst:Vector4):Vector4;
    function v4Build(x:Float, y:Float, z:Float, w:Float, ?dst:Vector4):Vector4;
    function v4BuildZero(?dst:Vector4):Vector4;
    function v4Copy(vec:Vector4, ?dst:Vector4):Vector4;
    function v4Dot(vecA:Vector4, vecB:Vector4):Float;
    function v4Equal(vecA:Vector4, vecB:Vector4, ?precision:Float):Bool;
    function v4LengthSq(vec:Vector4):Float;
    function v4Length(vec:Vector4):Float;
    function v4Lerp(vecA:Vector4, vecB:Vector4, x:Float, ?dst:Vector4):Vector4;
    function v4Max(vecA:Vector4, vecB:Vector4, ?dst:Vector4):Vector4;
    function v4Min(vecA:Vector4, vecB:Vector4, ?dst:Vector4):Vector4;
    function v4MulAdd(vecMulA:Vector4, vecMulB:Vector4, vecAdd:Vector4, ?dst:Vector4):Vector4;
    function v4Mul(vecA:Vector4, vecB:Vector4, ?dst:Vector4):Vector4;
    function v4Neg(vec:Vector4, ?dst:Vector4):Vector4;
    function v4Normalize(vec:Vector4, ?dst:Vector4):Vector4;
    function v4Reciprocal(vec:Vector4, ?dst:Vector4):Vector4;
    function v4ScalarAdd(vec:Vector4, x:Float, ?dst:Vector4):Vector4;
    function v4ScalarBuild(x:Float, ?dst:Vector4):Vector4;
    function v4ScalarMul(vec:Vector4, x:Float, ?dst:Vector4):Vector4;
    function v4ScalarSub(vec:Vector4, x:Float, ?dst:Vector4):Vector4;
    function v4Sub(vecA:Vector4, vecB:Vector4, ?dst:Vector4):Vector4;
}

