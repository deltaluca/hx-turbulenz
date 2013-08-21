package turbulenz.util;

class TZJS {
    // Auto embedding of tzjs include meta comments.
    static var require_cache:Array<String> = [];
    public macro static function require(module:String) {
//        if (Lambda.has(require_cache, module)) return macro {};
//        else {
//            require_cache.push(module);
            Sys.stdout().writeString('\x1b[31;1mTZJS \x1b[33;2m[\x1b[mREQUIRE\x1b[33;2m]\x1b[m $module\n');
            return macro untyped __js__('/*{{ javascript("jslib/$module.js") }}*/ null');
//        }
    }

    // Compile time json parsing/embedding
    public macro static function embedJSON(path:String):haxe.macro.Expr.ExprOf<Dynamic> {
        Sys.stdout().writeString('\x1b[31;1mTZJS \x1b[33;2m[\x1b[mJSON-EMBED\x1b[33;2m]\x1b[m $path \x1b[36;3m@ ${haxe.macro.Context.currentPos()}\x1b[m');

        var json:String;
        try json = sys.io.File.getContent(path)
        catch (e:Dynamic) {
            Sys.stdout().writeString("\x1b[31;1m ... file not found!\x1b[m\n");
            Sys.exit(1);
            return null;
        }
        try {
            var result = macro $v{haxe.Json.parse(json)};
            Sys.stdout().writeString("\n");
            return result;
        }
        catch (e:Dynamic) {
            Sys.stdout().writeString("\x1b[31;1m ... invalid JSON! ("+Std.string(e)+")\x1b[m\n");
            Sys.exit(1);
            return null;
        }
    }

    // Compile time json parsing
    public macro static function parseJSON(json:String):haxe.macro.Expr.ExprOf<Dynamic> {
        Sys.stdout().writeString('\x1b[31;1mTZJS \x1b[33;2m[\x1b[mJSON-PARSE\x1b[33;2m]\x1b[m \x1b[36;3m@ ${haxe.macro.Context.currentPos()}\x1b[m');
        try {
            var result = macro $v{haxe.Json.parse(json)};
            Sys.stdout().writeString("\n");
            return result;
        }
        catch (e:Dynamic) {
            Sys.stdout().writeString("\x1b[31;1m ... invalid JSON! ("+Std.string(e)+")\x1b[m\n");
            Sys.exit(1);
            return null;
        }
    }

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
