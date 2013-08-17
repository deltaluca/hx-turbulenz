package turbulenz.physics2d;

import turbulenz.MathDevice;
import turbulenz.physics2d.Constraint;
import turbulenz.physics2d.PhysicsDevice.Physics2DBroadphase;
import turbulenz.physics2d.RigidBody;
import turbulenz.physics2d.Shape;
import turbulenz.util.TZJS;

typedef CastResult = {
    hitPoint: Vector2,
    hitNormal: Vector2,
    shape: Shape,
    factor: Float
};

@:native("Physics2DWorld")
@:publicFields
extern class World {
    var broadphase(default,never):Physics2DBroadphase;
    var constraints(default,never):Array<Constraint>;
    var dynamicArbiters(default,never):Array<Arbiter>;
    var liveConstraints(default,never):Array<Constraint>;
    var liveDynamics(default,never):Array<RigidBody>;
    var liveKinematics(default,never):Array<RigidBody>;
    var positionIterations:Int;
    var rigidBodies(default,never):Array<RigidBody>;
    var simulatedTime(default,never):Float;
    var staticArbiters(default,never):Array<Arbiter>;
    var timeStamp(default,never):Int;
    var velocityIterations:Int;

    function addConstraint(constraint:Constraint):Bool;
    function addRigidBody(body:RigidBody):Bool;
    function bodyCircleQuery(center:Vector2, radius:Float, store:Array<Shape>):Int;
    function bodyPointQuery(point:Vector2, store:Array<RigidBody>):Int;
    function bodyRectangleQuery(extents:Box, store:Array<RigidBody>):Int;
    function clear():Void;
    function getGravity(?dst:Vector2):Vector2;
    function removeConstraint(constraint:Constraint):Bool;
    function removeRigidBody(body:RigidBody):Bool;
    function setGravity(gravity:Vector2):Void;
    function shapeCircleQuery(center:Vector2, radius:Float, store:Array<Shape>):Int;
    function shapePointQuery(point:Vector2, store:Array<Shape>):Int;
    function shapeRectangleQuery(extents:Box, store:Array<Shape>):Int;
    function step(deltaTime:Float):Void;

    // Haxe 'this' differs from JS 'this'
    inline function convexCast<T>(shape:Shape, deltaTime:Float, ?callback:T->Shape->CastResult->Bool, ?thisObject:T):Null<CastResult> return
        untyped __js__("(function (s,d,c,t) {
            return this.convexcast(s,d,c,t);
        })").call(this, shape, deltaTime, if (callback == null) null else TZJS.wrap2(callback), thisObject);
    inline function rayCast<T>(ray:Ray<Vector2>, ?ignoreInnerSurfaces:Bool, ?callback:T->Ray<Vector2>->CastResult->Bool, ?thisObject:T):Null<CastResult> return
        untyped __js__("(function (r,i,c,t) {
            return this.rayCast(r,i,c,t);
        })").call(this, ray, ignoreInnerSurfaces, if (callback == null) null else TZJS.wrap2(callback), thisObject);
}
