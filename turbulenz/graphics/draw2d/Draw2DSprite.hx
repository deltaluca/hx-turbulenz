package turbulenz.draw2d;

import turbulenz.graphics.Texture;
import turbulenz.util.TZArray;
import turbulenz.MathDevice;

@:native("Draw2DSprite")
@:publicFields
extern class Draw2DSprite {
    static function __init__():Void turbulenz.TZJS.require("draw2d");

    static function create(params:{
        ?color: RGBA,
        ?height: Float,
        ?origin: Vector2,
        ?rotation: Float,
        ?scale: Vector2,
        ?shear: Vector2,
        ?textureRectangle: Vector4,
        ?texture: Texture,
        ?width: Float,
        ?x: Float,
        ?y: Float
    }):Null<Draw2DSprite>;

    var x:Float;
    var y:Float;
    var rotation:Float;

    function getColor(?dst:RGBA):RGBA;
    function getHeight():Float;
    function getOrigin(?dst:Vector2):Vector2;
    function getScale(?dst:Vector2):Vector2;
    function getShear(?dst:Vector2):Vector2;
    function getTextureRectangle(?dst:Rectangle<Float32>):Rectangle<Float32>;
    function getTexture():Texture;
    function getWidth():Float;
    function setColor(color:RGBA):Void;
    function setHeight(height:Float):Void;
    function setOrigin(origin:Vector2):Void;
    function setScale(scale:Vector2):Void;
    function setShear(shear:Vector2):Void;
    function setTextureRectangle(rectangle:Rectangle<Float32>):Void;
    function setTexture(texture:Texture):Void;
    function setWidth(width:Float):Void;
}
