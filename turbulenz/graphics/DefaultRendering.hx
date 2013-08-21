package turbulenz.graphics;

import turbulenz.graphics.GraphicsDevice;
import turbulenz.graphics.ShaderManager;
import turbulenz.graphics.EffectManager;
import turbulenz.MathDevice;
import turbulenz.util.TZJS;

@:native("DefaultRendering")
@:publicFields
extern class DefaultRendering {
    static function __init__():Void {
        TZJS.require("renderingcommon");
        TZJS.require("defaultrendering");
    }

    static function create(graphics:GraphicsDevice, math:MathDevice, shader:ShaderManager, effect:EffectManager):DefaultRendering;

    function destroy():Void;
    function draw(graphics:GraphicsDevice, ?clearColor:RGBA, ?drawDecalsFn:Void->Void, ?drawTransparentFn:Void->Void, ?drawDebugFn:Void->Void):Void;
    function getDefaultSkinBufferSize():Int;
    function setAmbientColor(color:Vector3):Void;
    function setDefaultTexture(texture:Texture):Void;
    function setGlobalLightColor(color:Vector3):Void;
    function setGlobalLightPosition(position:Vector3):Void;
    function setWireframe(enable:Bool, ?config:{
        alphaRef: Float,
        fillColor: Vector4,
        wireColor: Vector4
    }):Void;
    function updateBuffers(graphics:GraphicsDevice, width:Int, height:Int):Void;
    function update(graphics:GraphicsDevice, camera:Camera, scene:Scene, currentTime:Float):Void;
    function updateShader(shader:ShaderManager):Void;

    var passIndex(default,never):{opaque:Int, decal:Int, transparent:Int};
    var version(default,never):Float;
}
