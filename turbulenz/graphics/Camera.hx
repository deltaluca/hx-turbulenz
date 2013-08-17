package turbulenz.graphics;

import turbulenz.MathDevice;

@:native("Camera")
@:publicFields
extern class Camera {
    static function __init__():Void turbulenz.util.TZJS.require("camera");

    var aspectRatio:Float;
    var farPlane:Float;
    var frustumPlanes:Array<Vector4>;
    var infinite:Bool;
    var matrix:Matrix43;
    var nearPlane:Float;
    var parallel:Bool;
    var projectionMatrix:Matrix44;
    var recipViewWindowX:Float;
    var recipViewWindowY:Float;
    var version(default,never):Float;
    var viewMatrix:Matrix43;
    var viewOffsetX:Float;
    var viewOffsetY:Float;
    var viewProjectionMatrix:Matrix44;

    static function create(mathDevice:MathDevice):Camera;

    function extractFrustumPlanes():Array<Vector4>;
    function getFrustumFarPoints():Array<Vector3>;
    function getFrustumPoints():Array<Vector3>;
    function isVisibleAABB(extents:AABB):Bool;
    function lookAt(target:Vector3, up:Vector3, origin:Vector3):Void;
    function updateFrustumPlanes():Void;
    function updateProjectionMatrix():Void;
    function updateViewMatrix():Void;
    function updateViewProjectionMatrix():Void;
}
