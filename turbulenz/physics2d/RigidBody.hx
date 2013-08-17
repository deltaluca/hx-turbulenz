package turbulenz.physics2d;

import turbulenz.MathDevice;
import turbulenz.physics2d.Constraint;
import turbulenz.physics2d.Shape;
import turbulenz.physics2d.World;
import turbulenz.util.TZJS;

@:fakeEnum abstract BodyEventType(String) from String to String {
    var wake = 'wake';
    var sleep = 'sleep';
}

@:native("Physics2DRigidBody")
@:publicFields
extern class RigidBody {
    var bullet:Bool;
    var constraints(default,never):Array<Constraint>;
    var shapes(default,never):Array<Shape>;
    var sleeping(default,never):Bool;
    var userData:Dynamic;
    var world(default,never):Null<World>;

    function addShape(shape:Shape):Bool;
    function alignWithOrigin():Void;
    function applyImpulse(impulse:Vector2, ?pos:Vector2):Void;
    function computeInertiaFromShapes():Float;
    function computeLocalCenterOfMass(?dst:Vector2):Vector2;
    function computeMassFromShapes():Float;
    function computeWorldBounds(?dst:Box):Box;
    function getAngularDrag():Float;
    function getAngularVelocity():Float;
    function getForce(?dst:Vector2):Vector2;
    function getInertia():Float;
    function getLinearDrag():Float;
    function getMass():Float;
    function getPosition(?dst:Vector2):Vector2;
    function getRotation():Float;
    function getSurfaceVelocity(?dst:Vector2):Vector2;
    function getTorque():Float;
    function getVelocity(?dst:Vector2):Vector2;
    function integrate(deltaTime:Float):Void;
    function isDynamic():Bool;
    function isKinematic():Bool;
    function isStatic():Bool;
    function removeShape(shape:Shape):Bool;
    function setAngularDrag(drag:Float):Void;
    function setAngularVelocity(angularVelocity:Float):Void;
    function setAsDynamic():Void;
    function setAsKinematic():Void;
    function setAsStatic():Void;
    function setForce(force:Vector2):Void;
    function setInertiaFromShapes():Void;
    function setInertia(inertia:Float):Void;
    function setLinearDrag(drag:Float):Void;
    function setMassFromShapes():Void;
    function setMass(mass:Float):Void;
    function setPosition(pos:Vector2):Void;
    function setRotation(rotation:Float):Void;
    function setSurfaceVelocity(vel:Vector2):Void;
    function setTorque(torque:Float):Void;
    function setVelocityFromPosition(targetPosition:Vector2, targetRotation:Float, deltaTime:Float):Void;
    function setVelocity(vel:Vector2):Void;
    function sleep():Void;
    function transformLocalPointToWorld(local:Vector2, ?dst:Vector2):Vector2;
    function transformLocalVectorToWorld(local:Vector2, ?dst:Vector2):Vector2;
    function transformWorldPointToLocal(world:Vector2, ?dst:Vector2):Vector2;
    function transformWorldVectorToLocal(world:Vector2, ?dst:Vector2):Vector2;
    function wake():Void;

    // Haxe 'this' differs from JS 'this'.
    inline function addEventListener(event:BodyEventType, handler:RigidBody->Void):Bool return
        untyped __js__("(function (ev,f) {
            return this.addEventListener(ev, f);
        })").call(this, event, TZJS.wrap0(handler));
    inline function removeEventListener(event:BodyEventType, handler:RigidBody->Void):Bool return
        untyped __js__("(function (ev,f) {
            return this.removeEventListener(ev, f);
        })").call(this, event, TZJS.wrap0(handler));
}

