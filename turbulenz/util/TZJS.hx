package turbulenz.util;

class TZJS {
    // Auto embedding of tzjs include meta comments.
    public macro static function require(module:String) return macro
        untyped __js__('/*{{ javascript("jslib/$module.js") }}*/ null');

    // Wrapping of Haxe functions for elements of JS API which accepts
    // handlers called with different 'this' parameter, allowing Haxe
    // API to accept an additional first argument for the JS 'this' parameter.
    @:extern public inline static function wrap0<T,S>(f:T->S):Void->S return
        if (untyped f.__js__fun == null)
            untyped f.__js__fun = function ():S return
                f(untyped __js__("this"))
        else untyped f.__js__fun;
    @:extern public inline static function wrap1<T,S,R>(f:T->S->R):S->R return
        if (untyped f.__js__fun == null)
            untyped f.__js__fun = function (x:S):R return
                f(untyped __js__("this"), x)
        else untyped f.__js__fun;
    @:extern public inline static function wrap2<T,S,R,Q>(f:T->S->R->Q):S->R->Q return
        if (untyped f.__js__fun == null)
            untyped f.__js__fun = function (x:S, y:R):Q return
                f(untyped __js__("this"), x, y)
        else untyped f.__js__fun;
    @:extern public inline static function wrap3<T,S,R,Q,P>(f:T->S->R->Q->P):S->R->Q->P return
        if (untyped f.__js__fun == null)
            untyped f.__js__fun = function (x:S, y:R, z:Q):P return
                f(untyped __js__("this"), x, y, z)
        else untyped f.__js__fun;
}
