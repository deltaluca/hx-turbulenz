package turbulenz.util;

// technically an interface, but requires wrapping of methods
// so has to be declared an extern class. yay
@:publicFields
extern class Broadphase<DataT, BoundsT> {
    function insert(data:DataT, bounds:BoundsT, isStatic:Bool):BroadphaseHandle<DataT>;
    function update(handle:BroadphaseHandle<DataT>, bounds:BoundsT, isStatic:Bool):Void;
    function remove(handle:BroadphaseHandle<DataT>):Void;

    // Haxe 'this' differs from JS 'this'
    inline function clear<T>(?callback:T->BroadphaseHandle<DataT>->Void, ?thisObject:T):Void
        untyped __js__("(function (c,t) {
            this.clear(c,t);
        })").call(this, if (callback == null) null else TZJS.wrap1(callback), thisObject);
    inline function perform<T>(callback:T->BroadphaseHandle<DataT>->BroadphaseHandle<DataT>->Void, ?thisObject:T):Void
        untyped __js__("(function (c,t) {
            this.perform(c,t);
        })").call(this, TZJS.wrap2(callback), thisObject);
    inline function sample<T>(bounds:BoundsT, callback:T->BroadphaseHandle<DataT>->BoundsT->Void, ?thisObject:T):Void
        untyped __js__("(function (b,c,t) {
            this.sample(b,c,t);
        })").call(this, bounds, TZJS.wrap2(callback), thisObject);
}

// Structual type. Matches JS API better.
typedef BroadphaseHandle<DataT> = {
    var data:DataT;
    var isStatic(default,never):Bool;
};
