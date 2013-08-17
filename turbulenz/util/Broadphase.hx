package turbulenz.util;

//
// Any class implementing Broadphase should ensure that callbacks
// are called via JS Function.prototype.call with thisObject as 'this' parameter to
// function correctly with existing JS code including Turbulenz engine itself.
//
@:publicFields
interface Broadphase<DataT, BoundsT> {
    function clear<T>(?callback:BroadphaseHandle<DataT>->Void, ?thisObject:T):Void;
    function insert(data:DataT, bounds:BoundsT, isStatic:Bool):BroadphaseHandle<DataT>;
    function perform<T>(callback:BroadphaseHandle<DataT>->BroadphaseHandle<DataT>->Void, ?thisObject:T):Void;
    function remove(handle:BroadphaseHandle<DataT>):Void;
    function sample<T>(bounds:BoundsT, callback:BroadphaseHandle<DataT>->BoundsT->Void, ?thisObject:T):Void;
    function update(handle:BroadphaseHandle<DataT>, bounds:BoundsT, isStatic:Bool):Void;
}

// Structual type. Matches JS API better.
typedef BroadphaseHandle<DataT> = {
    var data:DataT;
    var isStatic(default,never):Bool;
};
