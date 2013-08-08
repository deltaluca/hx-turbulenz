package turbulenz;

import turbulenz.Texture;
import turbulenz.MathDevice;

@:native("Draw2DSprite")
@:publicFields
extern class Draw2DSprite {
    static function __init__():Void turbulenz.TZJS.require("draw2d");

    static function create(params:{
        ?texture: Texture,
        ?textureRectangle: Vector4,
        ?width: Float,
        ?height: Float,
        ?color: RGBA,
        ?x: Float,
        ?y: Float,
        ?rotation: Float,
        ?origin: Vector2,
        ?scale: Vector2,
        ?shear: Vector2
    }):Null<Draw2DSprite>;

    var x:Float;
    var y:Float;
    var rotation:Float;

    function getColor(?dst:RGBA):RGBA;
    function setColor(color:RGBA):Void;
    function getTexture():Texture;
    function setTexture(texture:Texture):Void;
    function getTextureRectangle(?dst:Rectangle<Float32>):Rectangle<Float32>;
    function setTextureRectangle(rectangle:Rectangle<Float32>):Void;
    function getScale(?dst:Vector2):Vector2;
    function setScale(scale:Vector2):Void;
    function getShear(?dst:Vector2):Vector2;
    function setShear(shear:Vector2):Void;
    function getWidth():Float;
    function setWidth(width:Float):Void;
    function getHeight():Float;
    function setHeight(height:Float):Void;
    function getOrigin(?dst:Vector2):Vector2;
    function setOrigin(origin:Vector2):Void;
}
