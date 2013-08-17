package turbulenz;

import turbulenz.MathDevice;
import turbulenz.phys3d.DynamicsWorld;

@:native("PhysicsDevice")
@:publicFields
extern class PhysicsDevice {
    //TODO
    var vendor(default,never):String;
    var version(default,never):String;

    function createDynamicsWorld(params:{
        ?maxSubSteps:Int,
        ?fixedTimeStep:Float,
        ?gravity:Vector3,
        ?variableTimeSteps:Bool,
        ?minimumTimeStep:Float,
        ?maximumTimeStep:Float,
        ?maxGiveUpTimeStep:Float
    }):DynamicsWorld;
}
