package turbulenz.physics2d;

import turbulenz.graphics.GraphicsDevice;
import turbulenz.MathDevice;
import turbulenz.util.TZJS;

@:native("Physics2DDebugDraw")
@:publicFields
extern class DebugDraw {
    static function __init__():Void {
         TZJS.require("physics2ddevice");
         TZJS.require("physics2ddebugdraw");
    }

    var circleMaxError:Float;
    var curveMaxError:Float;
    var physics2DToScreen(default,never):Float;
    var screenToPhysics2D(default,never):Float;
    var showBodyDetail:Bool;
    var showColliderShapes:Bool;
    var showConstraints:Bool;
    var showContactImpulses:Bool;
    var showContacts:Bool;
    var showRigidBodies:Bool;
    var showSensorShapes:Bool;
    var showShapeDetail:Bool;
    var spiralSpringSize:Float;

    static function create(params:{
        graphicsDevice: GraphicsDevice
    }):DebugDraw;

    function begin():Void;
    function destroy():Void;
    function drawCircle(x:Float, y:Float, radius:Float, color:RGBA):Void;
    function drawConstraint(constraint:Constraint):Void;
    function drawCurve(x1:Float, y1:Float, cx:Float, cy:Float, x2:Float, y2:Float, color:RGBA):Void;
    function drawLinearSpring(x1:Float, y1:Float, x2:Float, y2:Float, numCoils:Int, radius:Float, color:RGBA):Void;
    function drawLine(x1:Float, y1:Float, x2:Float, y2:Float, color:RGBA):Void;
    function drawRectangle(x1:Float, y1:Float, x2:Float, y2:Float, color:RGBA):Void;
    function drawRigidBody(body:RigidBody):Void;
    function drawSpiralSpring(x:Float, y:Float, angle1:Float, angle2:Float, radius1:Float, radius2:Float, numCoils:Int, color:RGBA):Void;
    function drawSpiral(x:Float, y:Float, angle1:Float, angle2:Float, radius1:Float, radius2:Float, color:RGBA):Void;
    function drawWorld(world:World):Void;
    function end():Void;
    function setPhysics2DViewport(rectangle:Box):Void;
    function setScreenViewport(rectangle:Box):Void;
}
