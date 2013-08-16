package turbulenz;

import turbulenz.MathDevice;
import turbulenz.GraphicsDevice;
import turbulenz.InputDevice;
import turbulenz.Camera;

@:native("CameraController")
@:publicFields
extern class CameraController {
    var version(default,never):Float;
    var maxSpeed:Float;
    var rotateSpeed:Float;
    var mouseRotateFactor:Float;

    static function create(graphics:GraphicsDevice, input:InputDevice, camera:Camera):CameraController;

    function update():Void;
}
