package turbulenz.util;

@:native("JSON")
@:publicFields
extern class JSON {
    static function parse(text:String, ?reviver:String->Dynamic->Dynamic):Dynamic;
    static function stringify(value:Dynamic, ?replacer:String->Dynamic->Dynamic):String;
}
