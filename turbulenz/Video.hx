package turbulenz;

@:native("Video")
@:publicFields
extern class Video {
    var looping(default,never):Bool;
    var playing(default,never):Bool;
    var paused(default,never):Bool;
    var tell(default,never):Float;

    function play(?position:Float):Void;
    function stop():Bool;
    function pause():Bool;
    function resume(?position:Float):Bool;
    function rewind():Bool;
    function destroy():Void;
}
