package turbulenz.util;

class TZJS {
    public macro static function require(module:String) return macro
        untyped __js__('/*{{ javascript("jslib/$module.js") }}*/ null');
}
