package turbulenz;

import turbulenz.MathDevice;

@:native("Camera")
@:publicFields
extern class Camera {
    static function __init__():Void turbulenz.TZJS.require("camera");

    var version(default,never):Float;
    var viewOffsetX:Float;
    var viewOffsetY:Float;
    var recipViewWindowX:Float;
    var recipViewWindowY:Float;
    var infinite:Bool;
    var parallel:Bool;
    var aspectRatio:Float;
    var nearPlane:Float;
    var farPlane:Float;
    var matrix:Matrix43;
    var viewMatrix:Matrix43;
    var projectionMatrix:Matrix44;
    var viewProjectionMatrix:Matrix44;
    var frustumPlanes:Array<Vector4>;

    static function create(mathDevice:MathDevice):Camera;

    function lookAt(target:Vector3, up:Vector3, origin:Vector3):Void;
    function updateViewMatrix():Void;
    function updateProjectionMatrix():Void;
    function updateViewProjectionMatrix():Void;
    function updateFrustumPlanes():Void;
    function extractFrustumPlanes():Array<Vector4>;
    function getFrustumPoints():Array<Vector3>;
    function getFrustumFarPoints():Array<Vector3>;
    function isVisibleAABB(extents:AABB):Bool;
}
