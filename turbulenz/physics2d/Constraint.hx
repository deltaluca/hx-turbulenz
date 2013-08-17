package turbulenz.physics2d;

import turbulenz.MathDevice;
import turbulenz.physics2d.RigidBody;
import turbulenz.physics2d.World;

@:fakeEnum abstract ConstraintType(String) from String to String {
    var POINT = 'POINT';
    var DISTANCE = 'DISTANCE';
    var ANGLE = 'ANGLE';
    var WELD = 'WELD';
    var LINE = 'LINE';
    var PULLEY = 'PULLEY';
    var MOTOR = 'MOTOR';
    var CUSTOM = 'CUSTOM';
}

@:fakeEnum abstract ConstraintEventType(String) from String to String {
    var wake = 'wake';
    var sleep = 'sleep';
    var _break = 'break';
}

@:native("Physics2DConstraint")
@:publicFields
extern class Constraint {
    var type(default,never):ConstraintType;
    var world(default,never):World;
    var sleeping(default,never):Bool;
    var userData:Dynamic;
    var dimension(default,never):Int;

    function addEventListener(event:ConstraintEventType, handler:Void->Void):Bool;
    function configure(params:{
        ?breakUnderError: Bool,
        ?breakUnderForce: Bool,
        ?damping: Float,
        ?frequency: Float,
        ?ignoreInteractions: Bool,
        ?maxError: Float,
        ?maxForce: Float,
        ?removeOnBreak: Bool,
        ?stiff: Bool
    }):Void;
    function disabled():Void;
    function enable():Void;
    function getImpulseForBody(body:RigidBody, ?dst:Vector3):Vector3;
    function isDisabled():Bool;
    function isEnabled():Bool;
    function removeEventListener(event:ConstraintEventType, handler:Void->Void):Bool;
    function sleep():Void;
    function wake():Void;
}

@:native("Physics2DAngleConstraint")
@:publicFields
extern class AngleConstraint extends Constraint {
    var bodyA(default,never):RigidBody;
    var bodyB(default,never):RigidBody;

    function getLowerBound():Float;
    function getRatio():Float;
    function getUpperBound():Float;
    function setLowerBound(bound:Float):Void;
    function setRatio(ratio:Float):Void;
    function setUpperBound(bound:Float):Void;
}

@:native("Physics2DCustomConstraint")
@:publicFields
extern class CustomConstraint extends Constraint implements Dynamic<Dynamic> {
    var bodies(default,never):Array<RigidBody>;
}

@:native("Physics2DDistanceConstraint")
@:publicFields
extern class DistanceConstraint extends Constraint {
    var bodyA(default,never):RigidBody;
    var bodyB(default,never):RigidBody;

    function getAnchorA(?dst:Vector2):Vector2;
    function getAnchorB(?dst:Vector2):Vector2;
    function getLowerBound():Float;
    function getUpperBound():Float;
    function setAnchorA(vector:Vector2):Void;
    function setAnchorB(vector:Vector2):Void;
    function setLowerBound(bound:Float):Void;
    function setUpperBound(bound:Float):Void;
}

@:native("Physics2DLineConstraint")
@:publicFields
extern class LineConstraint extends Constraint {
    var bodyA(default,never):RigidBody;
    var bodyB(default,never):RigidBody;

    function getAnchorA(?dst:Vector2):Vector2;
    function getAnchorB(?dst:Vector2):Vector2;
    function getAxis(?dst:Vector2):Vector2;
    function getLowerBound():Float;
    function getUpperBound():Float;
    function setAnchorA(vector:Vector2):Void;
    function setAnchorB(vector:Vector2):Void;
    function setAxis(vector:Vector2):Void;
    function setLowerBound(bound:Float):Void;
    function setUpperBound(bound:Float):Void;
}

@:native("Physics2DMotorConstraint")
@:publicFields
extern class MotorConstraint extends Constraint {
    var bodyA(default,never):RigidBody;
    var bodyB(default,never):RigidBody;

    function getRate():Float;
    function getRatio():Float;
    function setRate(rate:Float):Void;
    function setRatio(ratio:Float):Void;
}

@:native("Physics2DPointConstraint")
@:publicFields
extern class PointConstraint extends Constraint {
    var bodyA(default,never):RigidBody;
    var bodyB(default,never):RigidBody;

    function getAnchorA(?dst:Vector2):Vector2;
    function getAnchorB(?dst:Vector2):Vector2;
    function setAnchorA(vector:Vector2):Void;
    function setAnchorB(vector:Vector2):Void;
}

@:native("Physics2DPulleyConstraint")
@:publicFields
extern class PulleyConstraint extends Constraint {
    var bodyA(default,never):RigidBody;
    var bodyB(default,never):RigidBody;
    var bodyC(default,never):RigidBody;
    var bodyD(default,never):RigidBody;

    function getAnchorA(?dst:Vector2):Vector2;
    function getAnchorB(?dst:Vector2):Vector2;
    function getAnchorC(?dst:Vector2):Vector2;
    function getAnchorD(?dst:Vector2):Vector2;
    function getLowerBound():Float;
    function getUpperBound():Float;
    function setAnchorA(vector:Vector2):Void;
    function setAnchorB(vector:Vector2):Void;
    function setAnchorC(vector:Vector2):Void;
    function setAnchorD(vector:Vector2):Void;
    function setLowerBound(bound:Float):Void;
    function setUpperBound(bound:Float):Void;
}

@:native("Physics2DWeldConstraint")
@:publicFields
extern class WeldConstraint extends Constraint {
    var bodyA(default,never):RigidBody;
    var bodyB(default,never):RigidBody;

    function getAnchorA(?dst:Vector2):Vector2;
    function getAnchorB(?dst:Vector2):Vector2;
    function getPhase():Float;
    function setAnchorA(vector:Vector2):Void;
    function setAnchorB(vector:Vector2):Void;
    function setPhase(phase:Float):Void;
}
