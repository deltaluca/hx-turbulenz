package turbulenz.physics2d;

import turbulenz.MathDevice;
import turbulenz.physics2d.Arbiter;
import turbulenz.physics2d.Material;
import turbulenz.physics2d.RigidBody;

@:fakeEnum abstract ShapeType(String) from String to String {
    var CIRCLE = 'CIRCLE';
    var POLYGON = 'POLYGON';
}

@:fakeEnum abstract ShapeEventType(String) from String to String {
    var begin = 'begin';
    var end = 'end';
    var preSolve = 'preSolve';
    var progress = 'progress';
}

typedef Matrix32 = TZArray<Float32>;

@:native("Physics2DShape")
@:publicFields
extern class Shape {
    var arbiters(default,never):Array<Arbiter>;
    var body:Null<RigidBody>;
    var id(default,never):Int;
    var sensor(default,never):Bool;
    var type(default,never):ShapeType;
    var userData:Dynamic;

    function addEventListener(event:ShapeEventType, handler:Arbiter->Shape->Void, ?mask:Int, ?isDeterministic:Int):Void;
    function clone():Shape;
    function computeCenterOfMass(?dst:Vector2):Vector2;
    function getGroup():Int;
    function getMask():Int;
    function getMaterial():Material;
    function removeEventListener(event:ShapeEventType, handler:Arbiter->Shape->Void, ?mask:Int):Void;
    function rotate(cwRadians:Float):Void;
    function scale(scaleX:Float, ?scaleY:Float):Void;
    function setGroup(group:Int):Void;
    function setMask(mask:Int):Void;
    function setMaterial(material:Material):Void;
    function transform(matrix:Matrix32):Void;
    function translate(translation:Vector2):Void;
}

@:native("Physics2DCircle")
@:publicFields
extern class Circle extends Shape {
    function getOrigin(?dst:Vector2):Vector2;
    function getRadius():Float;
    function setOrigin(origin:Vector2):Void;
    function setRadius(radius:Float):Void;
}

@:native("Physics2DPolygon")
@:publicFields
extern class Polygon extends Shape {
    function setVertices(vertices:Array<Vector2>):Void;
}

