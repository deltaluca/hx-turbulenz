package turbulenz.graphics;

import turbulenz.graphics.Camera;
import turbulenz.graphics.GraphicsDevice;
import turbulenz.InputDevice;
import turbulenz.MathDevice;

@:native("CameraController")
@:publicFields
extern class CameraController {
    var maxSpeed:Float;
    var mouseRotateFactor:Float;
    var rotateSpeed:Float;
    var version(default,never):Float;

    static function create(graphics:GraphicsDevice, input:InputDevice, camera:Camera):CameraController;

    function update():Void;
}
