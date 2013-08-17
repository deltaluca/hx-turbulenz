package turbulenz.physics3d;

import turbulenz.MathDevice;

@:native("DynamicsWorld")
@:publicFields
extern class DynamicsWorld {
    //TODO
    var gravity(default,never):Vector3;
    var fixedTimeStep(default,never):Float;
    var maxSubSteps(default,never):Int;
}
