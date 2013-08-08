package turbulenz;

import turbulenz.Texture;
import turbulenz.VMath;

@:native("Draw2DSprite")
@:publicFields
extern class Draw2DSprite {
    static function __init__():Void turbulenz.TZJS.require("draw2d");

    static function create(params:{
        ?texture: Texture,
        ?textureRectangle: Rectangle<Float32>,
        ?width: Float,
        ?height: Float,
        ?color: RGBA,
        ?x: Float,
        ?y: Float,
        ?rotation: Float,
        ?origin: Point<Float32>,
        ?scale: Vector<Float32>,
        ?shear: Vector<Float32>
    }):Null<Draw2DSprite>;

    var x:Float;
    var y:Float;
    var rotation:Float;

    function getColor(?dst:RGBA):RGBA;
    function setColor(color:RGBA):Void;
    function getTexture():Texture;
    function setTexture(texture:Texture):Void;
    function getTextureRectangle<Float32>(?dst:Rectangle<Float32>):Rectangle<Float32>;
    function setTextureRectangle<Float32>(rectangle:Rectangle<Float32>):Void;
    function getScale(?dst:Vector<Float32>):Vector<Float32>;
    function setScale(scale:Vector<Float32>):Void;
    function getShear(?dst:Vector<Float32>):Vector<Float32>;
    function setShear(shear:Vector<Float32>):Void;
    function getWidth():Float;
    function setWidth(width:Float):Void;
    function getHeight():Float;
    function setHeight(height:Float):Void;
    function getOrigin(?dst:Point<Float32>):Point<Float32>;
    function setOrigin(origin:Point<Float32>):Void;
}
