package turbulenz;

import turbulenz.Texture;
import turbulenz.VMath;

@:native("Draw2DSprite")
@:publicFields
extern class Draw2DSprite {
    static function __init__():Void turbulenz.TZJS.require("draw2d");

    static function create(params:{
        ?texture:Texture,
        ?textureRectangle:Rectangle,
        ?width:Float,
        ?height:Float,
        ?color:RGBA,
        ?x:Float,
        ?y:Float,
        ?rotation:Float,
        ?origin:Point,
        ?scale:Vector,
        ?shear:Vector
    }):Null<Draw2DSprite>;

    var x:Float;
    var y:Float;
    var rotation:Float;

    function getColor(?dst:RGBA):RGBA;
    function setColor(color:RGBA):Void;
    function getTexture():Texture;
    function setTexture(texture:Texture):Void;
    function getTextureRectangle(?dst:Rectangle):Rectangle;
    function setTextureRectangle(rectangle:Rectangle):Void;
    function getScale(?dst:Vector):Vector;
    function setScale(scale:Vector):Void;
    function getShear(?dst:Vector):Vector;
    function setShear(shear:Vector):Void;
    function getWidth():Float;
    function setWidth(width:Float):Void;
    function getHeight():Float;
    function setHeight(height:Float):Void;
    function getOrigin(?dst:Point):Point;
    function setOrigin(origin:Point):Void;
}
