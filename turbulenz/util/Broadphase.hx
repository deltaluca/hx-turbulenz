package turbulenz.util;

@:publicFields
interface Broadphase<DataT, BoundsT> {
    function insert(data:DataT, bounds:BoundsT, isStatic:Bool):BroadphaseHandle<DataT>;
    function update(handle:BroadphaseHandle<DataT>, bounds:BoundsT, isStatic:Bool):Void;
    function remove(handle:BroadphaseHandle<DataT>):Void;
    function clear(?callback:BroadphaseHandle<DataT>->Void):Void;
    function sample(bounds:BoundsT, callback:BroadphaseHandle<DataT>->BoundsT->Void):Void;
}

// Structual type. Matches JS API better.
typedef BroadphaseHandle<DataT> = {
    var data:DataT;
    var isStatic(default,never):Bool;
};
