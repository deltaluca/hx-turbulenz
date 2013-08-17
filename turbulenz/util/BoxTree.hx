package turbulenz.util;

import turbulenz.MathDevice;

typedef BoxTreeRay = {
    direction: Vector3,
    maxFactor: Float,
    origin: Vector3
};

@:native("BoxTree")
@:publicFields
extern class BoxTree<T> {
    static function __init__():Void turbulenz.util.TZJS.require("boxtree");

    var version(default,never):Float;

    static function create<T>(?highQuality:Bool):BoxTree<T>;
    static function rayTest<T,R:{factor:Float}>(trees:Array<BoxTree<T>>, ray:BoxTreeRay, callback:BoxTree<T>->T->BoxTreeRay->Float->Float->Null<R>):Null<R>;

    function add(object:T, extents:Box):Void;
    function clear():Void;
    function finalize():Void;
    function getOverlappingNodes(extents:Box, overlappingObjects:Array<T>, ?startIndex:Int):Int;
    function getOverlappingPairs(overlappingPairs:Array<T>, ?startIndex:Int):Int;
    function getCircleOverlappingNodes(center:Vector2, radius:Float, overlappingObjects:Array<T>):Void;
    function getVisibleNodes(planes:Array<Vector3>, visibleObjects:Array<T>, ?startIndex:Int):Int;
    function remove(object:T):Void;
    function update(object:T, extents:Box):Void;
}

