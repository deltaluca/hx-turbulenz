package turbulenz.physics2d;

import turbulenz.MathDevice;
import turbulenz.physics2d.Shape;

@:native("Physics2DCollisionUtils")
@:publicFields
extern class CollisionUtils {
    function containsPoint(shape:Shape, point:Vector2):Bool;
    function intersects(shapeA:Shape, shapeB:Shape):Bool;
    function rayTest(shape:Shape, ray:Ray<Vector2>, normal:Vector2, ?ignoreInnerSurfaces:Bool):Null<Float>;
    function signedDistance(shapeA:Shape, shapeB:Shape, witnessA:Vector2, witnessB:Vector2, axis:Vector2):Float;
    function sweepTest(shapeA:Shape, shapeB:Shape, deltaTime:Float, point:Vector2, normal:Vector2):Null<Float>;
}
