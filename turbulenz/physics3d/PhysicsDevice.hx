package turbulenz.physics3d;

import turbulenz.MathDevice;
import turbulenz.physics3d.DynamicsWorld;

@:native("PhysicsDevice")
@:publicFields
extern class PhysicsDevice {
    //TODO
    var vendor(default,never):String;
    var version(default,never):String;

    function createDynamicsWorld(params:{
        ?fixedTimeStep:Float,
        ?gravity:Vector3,
        ?maxGiveUpTimeStep:Float,
        ?maximumTimeStep:Float,
        ?maxSubSteps:Int,
        ?minimumTimeStep:Float,
        ?variableTimeSteps:Bool
    }):DynamicsWorld;
}
