package turbulenz.physics2d;

import turbulenz.MathDevice;
import turbulenz.physics2d.CollisionUtils;
import turbulenz.physics2d.Constraint;
import turbulenz.physics2d.DebugDraw;
import turbulenz.physics2d.Material;
import turbulenz.physics2d.RigidBody;
import turbulenz.physics2d.Shape;
import turbulenz.physics2d.World;
import turbulenz.util.BoxTree;
import turbulenz.util.Broadphase;
import turbulenz.util.TZArray;

typedef Physics2DBroadphase = Broadphase<Shape, Box>;

@:fakeEnum abstract RigidBodyType(String) from String to String {
    var _dynamic = 'dynamic';
    var _static = 'static';
    var kinematic = 'kinematic';
}

typedef CreationShapeParameters = {
    ?group: Int,
    ?mask: Int,
    ?material: Material,
    ?sensor: Bool,
    ?userData: Dynamic
};
typedef CreationConstraintParameters = {
    ?breakUnderError: Bool,
    ?breakUnderForce: Bool,
    ?damping: Float,
    ?disabled: Bool,
    ?frequency: Float,
    ?ignoreInteractions: Bool,
    ?maxError: Float,
    ?maxForce: Float,
    ?removeOnBreak: Bool,
    ?sleeping: Bool,
    ?stiff: Bool,
    ?userData: Dynamic
};

@:native("Physics2DDevice")
@:publicFields
extern class PhysicsDevice {
    static function __init__():Void turbulenz.util.TZJS.require("physics2ddevice");

    static function create():PhysicsDevice;

    function createAngleConstraint(params:{
        > CreationConstraintParameters,
        bodyA: RigidBody,
        bodyB: RigidBody,
        ?lowerBound: Float,
        ?ratio: Float,
        ?upperBound: Float
    }):AngleConstraint;
    function createBoxTreeBroadphase<T>():Broadphase<T, Box>;
    function createBoxVertices(width:Float, height:Float):Array<Vector2>;
    function createCircleShape(params:{
        > CreationShapeParameters,
        ?origin: Vector2,
        radius: Float
    }):Circle;
    function createCollisionUtils():CollisionUtils;
    function createCustomConstraint(params:{
        > CreationConstraintParameters,
        bodies: Array<RigidBody>,
        ?debugDraw: DebugDraw->Bool->Void,
        dimension: Int,
        jacobian: TZArray<Float32>->Int->Void,
        ?positionClamp: TZArray<Float32>->Int->Void,
        ?positionConstants: Void->Void,
        ?position: TZArray<Float32>->Int->Void,
        ?velocityClamp: TZArray<Float32>->Int->Void
    }):CustomConstraint;
    function createDistanceConstraint(params:{
        > CreationConstraintParameters,
        ?anchorA: Vector2,
        ?anchorB: Vector2,
        bodyA: RigidBody,
        bodyB: RigidBody,
        ?lowerBound: Float,
        ?upperBound: Float
    }):DistanceConstraint;
    function createLineConstraint(params:{
        > CreationConstraintParameters,
        ?anchorA: Vector2,
        ?anchorB: Vector2,
        axis: Vector2,
        bodyA: RigidBody,
        bodyB: RigidBody,
        ?lowerBound: Float,
        ?upperBound: Float
    }):LineConstraint;
    function createMaterial(params:{
        ?density: Float,
        ?dynamicFriction: Float,
        ?elasticity: Float,
        ?rollingFriction: Float,
        ?staticFriction: Float,
        ?userData: Dynamic
    }):Material;
    function createMotorConstraint(params:{
        > CreationConstraintParameters,
        bodyA: RigidBody,
        bodyB: RigidBody,
        ?rate: Float,
        ?ratio: Float
    }):MotorConstraint;
    function createPointConstraint(params:{
        > CreationConstraintParameters,
        ?anchorA: Vector2,
        ?anchorB: Vector2,
        bodyA: RigidBody,
        bodyB: RigidBody
    }):PointConstraint;
    function createPolygonShape(params:{
        > CreationShapeParameters,
        vertices: Array<Vector2>
    }):Polygon;
    function createPulleyConstraint(params:{
        > CreationConstraintParameters,
        ?anchorA: Vector2,
        ?anchorB: Vector2,
        ?anchorC: Vector2,
        ?anchorD: Vector2,
        bodyA: RigidBody,
        bodyB: RigidBody,
        bodyC: RigidBody,
        bodyD: RigidBody,
        ?lowerBound: Float,
        ?ratio: Float,
        ?upperBound: Float
    }):PulleyConstraint;
    function createRectangleVertices(x1:Float, y1:Float, x2:Float, y2:Float):Array<Vector2>;
    function createRegularPolygonVertices(diameterX:Float, diameterY:Float, numVertices:Int):Array<Vector2>;
    function createRigidBody(params:{
        ?angularDrag: Float,
        ?angularVelocity: Float,
        ?bullet: Bool,
        ?force: Vector2,
        ?inertia: Float,
        ?linearDrag: Float,
        ?mass: Float,
        ?position: Vector2,
        ?rotation: Float,
        ?shapes: Array<Shape>,
        ?sleeping: Bool,
        ?surfaceVelocity: Vector2,
        ?torque: Float,
        ?type: RigidBodyType,
        ?userData: Dynamic,
        ?velocity: Vector2,
    }):RigidBody;
    function createSweepAndPrunePhysics2DBroadphase<T>():Broadphase<T, Box>;
    function createWeldConstraint(params:{
        > CreationConstraintParameters,
        ?anchorA: Vector2,
        ?anchorB: Vector2,
        bodyA: RigidBody,
        bodyB: RigidBody,
        ?phase: Float
    }):WeldConstraint;
    function createWorld(params:{
        ?broadphase:Physics2DBroadphase,
        ?gravity:Vector2,
        ?positionIterations:Int,
        ?velocityIterators:Int
    }):World;
    function getDefaultMaterial():Material;

}
