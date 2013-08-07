package turbulenz;

@:native("GraphicsDevice")
@:publicFields
extern class GraphicsDevice {
    var vendor(default,never):String;
    var renderer(default,never):String;
    var rendererVersion(default,never):String;
    var shadingLanguageVersion(default,never):String;
    var videoRam(default,never):Float;
    var extensions(default,never):String;
    var width(default,never):Int;
    var height(default,never):Int;
    var desktopWidth(default,never):Int;
    var desktopHeight(default,never):Int;
    var fps(default,never):Float;
    var fullscreen:Bool;
    //TODO (other properties)

    //TODO (other functions)
    function beginFrame():Bool;
    function endFrame():Void;
    function setViewport(x:Int, y:Int, width:Int, height:Int):Void;
    function setScissor(x:Int, y:Int, width:Int, height:Int):Void;
    function clear(clearColor:Array<Float>/*TODO*/, ?clearDepth:Float, ?clearStencil:Float):Void;
}
