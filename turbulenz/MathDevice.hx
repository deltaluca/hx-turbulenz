package turbulenz;

import turbulenz.TZArray;

abstract Vector2(TZArray<Float32>) from TZArray<Float32> to TZArray<Float32> {
    public var x(get,set):Float;
    public var y(get,set):Float;
    inline function get_x():Float return this[0];
    inline function set_x(x:Float):Float return this[0] = x;
    inline function get_y():Float return this[1];
    inline function set_y(y:Float):Float return this[1] = y;

    public var s(get,set):Float;
    public var t(get,set):Float;
    inline function get_s():Float return this[0];
    inline function set_s(s:Float):Float return this[0] = s;
    inline function get_t():Float return this[1];
    inline function set_t(t:Float):Float return this[1] = t;

    public var r(get,set):Float;
    public var g(get,set):Float;
    inline function get_r():Float return this[0];
    inline function set_r(r:Float):Float return this[0] = r;
    inline function get_g():Float return this[1];
    inline function set_g(g:Float):Float return this[1] = g;

    @:arrayAccess public inline function get(i:Int):Float return this[i];
    @:arrayAccess public inline function set(i:Int,x:Float):Float return this[i] = x;
}

abstract Vector3(TZArray<Float32>) from TZArray<Float32> to TZArray<Float32> {
    public var x(get,set):Float;
    public var y(get,set):Float;
    public var z(get,set):Float;
    inline function get_x():Float return this[0];
    inline function set_x(x:Float):Float return this[0] = x;
    inline function get_y():Float return this[1];
    inline function set_y(y:Float):Float return this[1] = y;
    inline function get_z():Float return this[2];
    inline function set_z(z:Float):Float return this[2] = z;

    public var s(get,set):Float;
    public var t(get,set):Float;
    public var p(get,set):Float;
    inline function get_s():Float return this[0];
    inline function set_s(s:Float):Float return this[0] = s;
    inline function get_t():Float return this[1];
    inline function set_t(t:Float):Float return this[1] = t;
    inline function get_p():Float return this[2];
    inline function set_p(p:Float):Float return this[2] = p;

    public var r(get,set):Float;
    public var g(get,set):Float;
    public var b(get,set):Float;
    inline function get_r():Float return this[0];
    inline function set_r(r:Float):Float return this[0] = r;
    inline function get_g():Float return this[1];
    inline function set_g(g:Float):Float return this[1] = g;
    inline function get_b():Float return this[2];
    inline function set_b(b:Float):Float return this[2] = b;

    @:arrayAccess public inline function get(i:Int):Float return this[i];
    @:arrayAccess public inline function set(i:Int,x:Float):Float return this[i] = x;
}

abstract Vector4(TZArray<Float32>) from TZArray<Float32> to TZArray<Float32> {
    public var x(get,set):Float;
    public var y(get,set):Float;
    public var z(get,set):Float;
    public var w(get,set):Float;
    inline function get_x():Float return this[0];
    inline function set_x(x:Float):Float return this[0] = x;
    inline function get_y():Float return this[1];
    inline function set_y(y:Float):Float return this[1] = y;
    inline function get_z():Float return this[2];
    inline function set_z(z:Float):Float return this[2] = z;
    inline function get_w():Float return this[3];
    inline function set_w(w:Float):Float return this[3] = w;

    public var s(get,set):Float;
    public var t(get,set):Float;
    public var p(get,set):Float;
    public var q(get,set):Float;
    inline function get_s():Float return this[0];
    inline function set_s(s:Float):Float return this[0] = s;
    inline function get_t():Float return this[1];
    inline function set_t(t:Float):Float return this[1] = t;
    inline function get_p():Float return this[2];
    inline function set_p(p:Float):Float return this[2] = p;
    inline function get_q():Float return this[3];
    inline function set_q(q:Float):Float return this[3] = q;

    public var r(get,set):Float;
    public var g(get,set):Float;
    public var b(get,set):Float;
    public var a(get,set):Float;
    inline function get_r():Float return this[0];
    inline function set_r(r:Float):Float return this[0] = r;
    inline function get_g():Float return this[1];
    inline function set_g(g:Float):Float return this[1] = g;
    inline function get_b():Float return this[2];
    inline function set_b(b:Float):Float return this[2] = b;
    inline function get_a():Float return this[3];
    inline function set_a(a:Float):Float return this[3] = a;

    @:arrayAccess public inline function get(i:Int):Float return this[i];
    @:arrayAccess public inline function set(i:Int,x:Float):Float return this[i] = x;
}

abstract AABB(TZArray<Float32>) from TZArray<Float32> to TZArray<Float32> {
    inline public function slice(from:Int, to:Int):TZArray<Float32>
        return untyped __js__("(function (from, to) {
            return this.slice(from, to);
        })").call(this, from, to);

    @:arrayAccess public inline function get(i:Int):Float return this[i];
    @:arrayAccess public inline function set(i:Int,x:Float):Float return this[i] = x;
}

typedef RGBA = Vector4;
typedef Quaternion = Vector4;
typedef QuaternionPosition = TZArray<Float32>;
typedef Matrix33 = TZArray<Float32>;
typedef Matrix34 = TZArray<Float32>;
typedef Matrix43 = TZArray<Float32>;
typedef Matrix44 = TZArray<Float32>;

@:native("MathDevice")
@:publicFields
extern class MathDevice {
    function truncate(x:Float):Int;
    function v2Build(x:Float, y:Float, ?dst:Vector2):Vector2;
    function v2BuildZero(?dst:Vector2):Vector2;
    function v2BuildOne(?dst:Vector2):Vector2;
    function v2BuildXAxis(?dst:Vector2):Vector2;
    function v2BuildYAxis(?dst:Vector2):Vector2;
    function v2Copy(vec:Vector2, ?dst:Vector2):Vector2;
    function v2Abs(vec:Vector2, ?dst:Vector2):Vector2;
    function v2Equal(vecA:Vector2, vecB:Vector2, ?precision:Float):Bool;
    function v2Neg(vec:Vector2, ?dst:Vector2):Vector2;
    function v2Reciprocal(vec:Vector2, ?dst:Vector2):Vector2;
    function v2Add(vecA:Vector2, vecB:Vector2, ?dst:Vector2):Vector2;
    function v2Add3(vecA:Vector2, vecB:Vector2, vecC:Vector2, ?dst:Vector2):Vector2;
    function v2Add4(vecA:Vector2, vecB:Vector2, vecC:Vector2, vecD:Vector2, ?dst:Vector2):Vector2;
    function v2Sub(vecA:Vector2, vecB:Vector2, ?dst:Vector2):Vector2;
    function v2Mul(vecA:Vector2, vecB:Vector2, ?dst:Vector2):Vector2;
    function v2Min(vecA:Vector2, vecB:Vector2, ?dst:Vector2):Vector2;
    function v2Max(vecA:Vector2, vecB:Vector2, ?dst:Vector2):Vector2;
    function v2Dot(vecA:Vector2, vecB:Vector2):Float;
    function v2PerpDot(vecA:Vector2, vecB:Vector2):Float;
    function v2Normalize(vec:Vector2, ?dst:Vector2):Vector2;
    function v2LengthSq(vec:Vector2):Float;
    function v2Length(vec:Vector2):Float;
    function v2MulAdd(vecMulA:Vector2, vecMulB:Vector2, vecAdd:Vector2, ?dst:Vector2):Vector2;
    function v2ScalarBuild(x:Float, ?dst:Vector2):Vector2;
    function v2ScalarAdd(vec:Vector2, x:Float, ?dst:Vector2):Vector2;
    function v2ScalarSub(vec:Vector2, x:Float, ?dst:Vector2):Vector2;
    function v2ScalarMul(vec:Vector2, x:Float, ?dst:Vector2):Vector2;
    function v2AddScalarMul(vecAdd:Vector2, vecMul:Vector2, x:Float, ?dst:Vector2):Vector2;
    function v2Lerp(vecA:Vector2, vecB:Vector2, x:Float, ?dst:Vector2):Vector2;
    function v2CatmullRom(t:Float, tension:Float, vecA:Vector2, vecB:Vector2, vecC:Vector2, vecD:Vector2, ?dst:Vector2):Vector2;
    function v3Build(x:Float, y:Float, z:Float, ?dst:Vector3):Vector3;
    function v3BuildZero(?dst:Vector3):Vector3;
    function v3BuildOne(?dst:Vector3):Vector3;
    function v3BuildXAxis(?dst:Vector3):Vector3;
    function v3BuildYAxis(?dst:Vector3):Vector3;
    function v3BuildZAxis(?dst:Vector3):Vector3;
    function v3Copy(vec:Vector3, ?dst:Vector3):Vector3;
    function v3Abs(vec:Vector3, ?dst:Vector3):Vector3;
    function v3Equal(vecA:Vector3, vecB:Vector3, ?precision:Float):Bool;
    function v3Neg(vec:Vector3, ?dst:Vector3):Vector3;
    function v3Reciprocal(vec:Vector3, ?dst:Vector3):Vector3;
    function v3Add(vecA:Vector3, vecB:Vector3, ?dst:Vector3):Vector3;
    function v3Add3(vecA:Vector3, vecB:Vector3, vecC:Vector3, ?dst:Vector3):Vector3;
    function v3Add4(vecA:Vector3, vecB:Vector3, vecC:Vector3, vecD:Vector3, ?dst:Vector3):Vector3;
    function v3Sub(vecA:Vector3, vecB:Vector3, ?dst:Vector3):Vector3;
    function v3Mul(vecA:Vector3, vecB:Vector3, ?dst:Vector3):Vector3;
    function v3Min(vecA:Vector3, vecB:Vector3, ?dst:Vector3):Vector3;
    function v3Max(vecA:Vector3, vecB:Vector3, ?dst:Vector3):Vector3;
    function v3Dot(vecA:Vector3, vecB:Vector3):Float;
    function v3Cross(vecA:Vector3, vecB:Vector3, ?dst:Vector3):Vector3;
    function v3Normalize(vec:Vector3, ?dst:Vector3):Vector3;
    function v3LengthSq(vec:Vector3):Float;
    function v3Length(vec:Vector3):Float;
    function v3MulAdd(vecMulA:Vector3, vecMulB:Vector3, vecAdd:Vector3, ?dst:Vector3):Vector3;
    function v3ScalarBuild(x:Float, ?dst:Vector3):Vector3;
    function v3ScalarAdd(vec:Vector3, x:Float, ?dst:Vector3):Vector3;
    function v3ScalarSub(vec:Vector3, x:Float, ?dst:Vector3):Vector3;
    function v3ScalarMul(vec:Vector3, x:Float, ?dst:Vector3):Vector3;
    function v3AddScalarMul(vecAdd:Vector3, vecMul:Vector3, x:Float, ?dst:Vector3):Vector3;
    function v3Lerp(vecA:Vector3, vecB:Vector3, x:Float, ?dst:Vector3):Vector3;
    function v3CatmullRom(t:Float, tension:Float, vecA:Vector3, vecB:Vector3, vecC:Vector3, vecD:Vector3, ?dst:Vector3):Vector3;
    function v4Build(x:Float, y:Float, z:Float, w:Float, ?dst:Vector4):Vector4;
    function v4BuildZero(?dst:Vector4):Vector4;
    function v4BuildOne(?dst:Vector4):Vector4;
    function v4Copy(vec:Vector4, ?dst:Vector4):Vector4;
    function v4Abs(vec:Vector4, ?dst:Vector4):Vector4;
    function v4Equal(vecA:Vector4, vecB:Vector4, ?precision:Float):Bool;
    function v4Neg(vec:Vector4, ?dst:Vector4):Vector4;
    function v4Reciprocal(vec:Vector4, ?dst:Vector4):Vector4;
    function v4Add(vecA:Vector4, vecB:Vector4, ?dst:Vector4):Vector4;
    function v4Add3(vecA:Vector4, vecB:Vector4, vecC:Vector4, ?dst:Vector4):Vector4;
    function v4Add4(vecA:Vector4, vecB:Vector4, vecC:Vector4, vecD:Vector4, ?dst:Vector4):Vector4;
    function v4Sub(vecA:Vector4, vecB:Vector4, ?dst:Vector4):Vector4;
    function v4Mul(vecA:Vector4, vecB:Vector4, ?dst:Vector4):Vector4;
    function v4Min(vecA:Vector4, vecB:Vector4, ?dst:Vector4):Vector4;
    function v4Max(vecA:Vector4, vecB:Vector4, ?dst:Vector4):Vector4;
    function v4Dot(vecA:Vector4, vecB:Vector4):Float;
    function v4Normalize(vec:Vector4, ?dst:Vector4):Vector4;
    function v4LengthSq(vec:Vector4):Float;
    function v4Length(vec:Vector4):Float;
    function v4MulAdd(vecMulA:Vector4, vecMulB:Vector4, vecAdd:Vector4, ?dst:Vector4):Vector4;
    function v4ScalarBuild(x:Float, ?dst:Vector4):Vector4;
    function v4ScalarAdd(vec:Vector4, x:Float, ?dst:Vector4):Vector4;
    function v4ScalarSub(vec:Vector4, x:Float, ?dst:Vector4):Vector4;
    function v4ScalarMul(vec:Vector4, x:Float, ?dst:Vector4):Vector4;
    function v4AddScalarMul(vecAdd:Vector4, vecMul:Vector4, x:Float, ?dst:Vector4):Vector4;
    function v4Lerp(vecA:Vector4, vecB:Vector4, x:Float, ?dst:Vector4):Vector4;
    function planeNormalize(plane:Vector4, ?dst:Vector4):Vector4;
    function aabbBuild(minX:Float, minY:Float, minZ:Float, maxX:Float, maxY:Float, maxZ:Float, ?dst:AABB):AABB;
    function aabbBuildEmpty(?dst:AABB):AABB;
    function aabbCopy(aabb:AABB, ?dst:AABB):AABB;
    function aabbIsEmpty(aabb:AABB):Bool;
    function aabbGetCenterAndHalf(aabb:AABB, outCenter:Vector3, outHalfExtents:Vector3):Void;
    function aabbIsInsidePlanes(aabb:AABB, planes:Array<Vector4>):Bool;
    function aabbIsFullyInsidePlanes(aabb:AABB, planes:Array<Vector4>):Bool;
    function aabbUnion(aabbA:AABB, aabbB:AABB, ?dst:AABB):AABB;
    function aabbUnionArray(aabbs:Array<AABB>, ?dst:AABB):AABB;
    function aabbAddPoints(aabb:AABB, points:Array<Vector3>, ?dst:AABB):AABB;
    function aabbTransform(aabb:AABB, matrix:Matrix43, ?dst:AABB):AABB;
    function aabbIntercept(aabbA:AABB, aabbB:AABB, ?dst:AABB):AABB;
    function aabbOverlaps(aabbA:AABB, aabbB:AABB):Bool;
    function aabbSphereOverlaps(aabb:AABB, center:Vector3, radius:Float):Bool;
    function aabbIsInside(aabbA:AABB, aabbB:AABB):Bool;
    function aabbTestInside(aabbA:AABB, aabbB:AABB):Int;
    function quatBuild(a:Float, b:Float, c:Float, d:Float, ?dst:Quaternion):Quaternion;
    function quatEqual(qA:Quaternion, qB:Quaternion, ?precision:Float):Bool;
    function quatIsSimilar(qA:Quaternion, qB:Quaternion, ?precision:Float):Bool;
    function quatLength(q:Quaternion):Float;
    function quatNormalize(q:Quaternion, ?dst:Quaternion):Quaternion;
    function quatConjugate(q:Quaternion, ?dst:Quaternion):Quaternion;
    function quatDot(qA:Quaternion, qB:Quaternion):Float;
    function quatMul(qA:Quaternion, qB:Quaternion, ?dst:Quaternion):Quaternion;
    function quatToAxisRotation(q:Quaternion, ?dst:Vector4):Vector4;
    function quatTransformVector(q:Quaternion, vec:Vector3, ?dst:Vector3):Vector3;
    function quatFromAxisRotation(axis:Vector3, rot:Float, ?dst:Quaternion):Quaternion;
    function quatFromM43(matrix:Matrix43, ?dst:Quaternion):Quaternion;
    function quatCopy(q:Quaternion, ?dst:Quaternion):Quaternion;
    function quatLerp(qA:Quaternion, qB:Quaternion, x:Float, ?dst:Quaternion):Quaternion;
    function quatSlerp(qA:Quaternion, qB:Quaternion, x:Float, ?dst:Quaternion):Quaternion;

    @:overload(function (a:Float, b:Float, c:Float, d:Float, v3a:Float, v3b:Float, v3c:Float, ?dst:QuaternionPosition):QuaternionPosition {})
    function quadPosBuild(q:Quaternion, pos:Vector3, ?dst:QuaternionPosition):QuaternionPosition;

    function quatMulTranslate(qA:Quaternion, vA:Vector3, qB:Quaternion, vB:Vector3, qOut:Quaternion, vOut:Vector3):Void;
    function m33BuildIdentity():Matrix33;

    @:overload(function (a:Float, b:Float, c:Float,
                         d:Float, e:Float, f:Float,
                         g:Float, h:Float, i:Float, ?dst:Matrix33):Matrix33 {})
    function m33Build(right:Vector3, up:Vector3, at:Vector3, ?dst:Matrix33):Matrix33;

    function m33Copy(m:Matrix33, ?dst:Matrix33):Matrix33;
    function m33FromAxisRotation(axis:Vector3, rot:Float, ?dst:Matrix33):Matrix33;
    function m33Mul(mA:Matrix33, mB:Matrix33, ?dst:Matrix33):Matrix33;
    function m33Transform(m:Matrix33, v:Vector3, ?dst:Vector3):Vector3;
    function m33Transpose(m:Matrix33, ?dst:Matrix33):Matrix33;
    function m33InverseTranspose(m:Matrix33, ?dst:Matrix33):Matrix33;
    function m33Determinant(m:Matrix33):Float;

    @:overload(function(mA:Matrix43, mB:Matrix43, ?dst:Matrix43):Matrix43 {})
    function m33MulM43(mA:Matrix33, mB:Matrix43, ?dst:Matrix43):Matrix43;

    function m33MulM44(mA:Matrix33, mB:Matrix44, ?dst:Matrix44):Matrix44;
    function m33FromQuat(quat:Quaternion, ?dst:Matrix33):Matrix33;
    function m33Up(m:Matrix33, ?dst:Vector3):Vector3;
    function m33At(m:Matrix33, ?dst:Vector3):Vector3;
    function m33Right(m:Matrix33, ?dst:Vector3):Vector3;
    function m33SetUp(m:Matrix33, v:Vector3):Void;
    function m33SetAt(m:Matrix33, v:Vector3):Void;
    function m33SetRight(m:Matrix33, v:Vector3):Void;
    function m34BuildIdentity(?dst:Matrix34):Matrix34;
    function m34Pos(m:Matrix34, ?dst:Vector3):Vector3;
    function m43BuildIdentity(?dst:Matrix43):Matrix43;

    @:overload(function (a:Float, b:Float, c:Float,
                         d:Float, e:Float, f:Float,
                         g:Float, h:Float, i:Float,
                         j:Float, k:Float, l:Float, ?dst:Matrix43):Matrix43 {})
    function m43Build(right:Vector3, up:Vector3, at:Vector3, pos:Vector3, ?dst:Matrix33):Matrix43;

    @:overload(function (x:Float, y:Float, z:Float, ?dst:Matrix43):Matrix43 {})
    function m43BuildTranslation(t:Vector3, ?dst:Matrix43):Matrix43;
    function m43Copy(m:Matrix43, ?dst:Matrix43):Matrix43;
    // TODO rest of m43 methods
    function m44BuildIdentity(?dst:Matrix44):Matrix44;
    // TODO rest of m44 methods
}

