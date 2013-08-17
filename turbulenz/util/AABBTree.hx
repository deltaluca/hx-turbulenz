package turbulenz.util;

import turbulenz.MathDevice;

@:native("AABBTree")
@:publicFields
extern class AABBTree<T> {
    static function __init__():Void turbulenz.util.TZJS.require("aabbtree");

    var version(default,never):Float;

    static function create<T>(?highQuality:Bool):AABBTree<T>;
    static function rayTest<T,R:{factor:Float}>(trees:Array<AABBTree<T>>, ray:Ray<Vector3>, callback:AABBTree<T>->T->Ray<Vector3>->Float->Float->Null<R>):Null<R>;

    function add(object:T, extents:AABB):Void;
    function clear():Void;
    function finalize():Void;
    function getOverlappingNodes(extents:AABB, overlappingObjects:Array<T>, ?startIndex:Int):Int;
    function getOverlappingPairs(overlappingPairs:Array<T>, ?startIndex:Int):Int;
    function getSphereOverlappingNodes(center:Vector3, radius:Float, overlappingObjects:Array<T>):Void;
    function getVisibleNodes(planes:Array<Vector4>, visibleObjects:Array<T>, ?startIndex:Int):Int;
    function remove(object:T):Void;
    function update(object:T, extents:AABB):Void;
}
