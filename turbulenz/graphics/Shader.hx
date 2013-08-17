package turbulenz.graphics;

import turbulenz.graphics.Technique;

@:native("Shader")
@:publicFields
extern class Shader {
    var id(default,never):Int;
    var name(default,never):String;
    var numParameters(default,never):Int;
    var numTechniques(default,never):Int;

    function destroy():Void;
    function getParameter(indexOrName:Dynamic):Null<{
        columns: Int,
        name: String,
        rows: Int,
        type: String
    }>;
    function getTechnique(indexOrName:Dynamic):Null<Technique>;
}
