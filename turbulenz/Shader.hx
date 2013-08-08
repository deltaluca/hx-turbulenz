package turbulenz;

import turbulenz.Technique;

@:native("Shader")
@:publicFields
extern class Shader {
    var name(default,never):String;
    var id(default,never):Int;
    var numTechniques(default,never):Int;
    var numParameters(default,never):Int;

    function destroy():Void;
    function getTechnique(indexOrName:Dynamic):Null<Technique>;
    function getParameter(indexOrName:Dynamic):Null<{
        name: String,
        type: String,
        rows: Int,
        columns: Int
    }>;
}
