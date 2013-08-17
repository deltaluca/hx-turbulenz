package turbulenz.graphics;

@:native("Video")
@:publicFields
extern class Video {
    var looping(default,never):Bool;
    var paused(default,never):Bool;
    var playing(default,never):Bool;
    var tell(default,never):Float;

    function destroy():Void;
    function pause():Bool;
    function play(?position:Float):Void;
    function resume(?position:Float):Bool;
    function rewind():Bool;
    function stop():Bool;
}
