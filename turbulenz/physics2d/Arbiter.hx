package turbulenz.physics2d;

import turbulenz.MathDevice;
import turbulenz.physics2d.RigidBody;
import turbulenz.physics2d.Shape;

@:native("Physics2DArbiter")
@:publicFields
extern class Arbiter {
    var active(default,never):Bool;
    var bodyA(default,never):RigidBody;
    var bodyB(default,never):RigidBody;
    var contacts(default,never):Array<Contact>;
    var sensor(default,never):Bool;
    var shapeA(default,never):Shape;
    var shapeB(default,never):Shape;

    function getDynamicFriction():Float;
    function getElasticity():Float;
    function getImpulseForBody(body:RigidBody, ?dst:Vector3):Vector3;
    function getNormal(?dst:Vector2):Vector2;
    function getRollingFriction():Float;
    function getRollingImpulse():Float;
    function getStaticFriction():Float;
    function isStateAccepted():Bool;
    function isStatePersistent():Bool;
    function setAcceptedState(accepted:Bool):Void;
    function setDynamicFriction(friction:Float):Void;
    function setDynamicFrictionFromShapes():Void;
    function setElasticity(elasticity:Float):Void;
    function setElasticityFromShapes():Void;
    function setPersistentState(persistent:Bool):Void;
    function setRollingFriction(friction:Float):Void;
    function setRollingFrictionFromShapes():Void;
    function setStaticFriction(friction:Float):Void;
    function setStaticFrictionFromShapes():Void;
}

@:native("Physics2DContact")
@:publicFields
extern class Contact {
    var active(default,never):Bool;
    var fresh(default,never):Bool;
    var virtual(default,never):Bool;

    function getPosition(?dst:Vector2):Vector2;
    function getPenetration():Float;
    function getNormalImpulse():Float;
    function getTangentImpulse():Float;
}
