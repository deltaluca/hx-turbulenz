package turbulenz;

import turbulenz.GraphicsDevice;
import turbulenz.Texture;
import turbulenz.RenderTarget;
import turbulenz.Technique;
import turbulenz.TZArray;
import turbulenz.Draw2DSprite;

typedef ScaleMode = String;
typedef SortMode = String;
typedef BlendMode = String;

@:native("Draw2D")
@:publicFields
extern class Draw2D {
    static function __init__():Void turbulenz.TZJS.require("draw2d");

    static function create(params:{
        graphicsDevice: GraphicsDevice,
        ?blendModes: Dynamic<Technique>,
        ?initialGpuMemory: Int,
        ?maxGpuMemory: Int
    }):Draw2D;

    var scale(default,never):Dynamic<ScaleMode>;
    var sort(default,never):Dynamic<SortMode>;
    var blend(default,never):Dynamic<BlendMode>;
    var performanceData(default,never):{
        gpuMemoryUsage: Int,
        dataTransfers: Int,
        batchCount: Int,
        minBatchSize: Null<Int>,
        maxBatchSize: Null<Int>,
        avgBatchSize: Null<Float>
    };

    function configure(params:{
        ?scaleMode: ScaleMode,
        ?viewportRectangle: Rectangle<Float32>
    }):Void;
    function destroy():Void;
    function begin(?blendMode:BlendMode, ?sortMode:SortMode):Bool;
    function end():Bool;
    function clear(?clearColor:RGBA):Bool;
    function getViewport(?viewport:Rectangle<Float32>):Rectangle<Float32>;
    function getScreenSpaceViewport(?viewport:Rectangle<Float32>):Rectangle<Float32>;
    function viewportMap(x:Float, y:Float, ?point:Point<Float32>):Point<Float32>;
    function viewportUnmap(x:Float, y:Float, ?point:Point<Float32>):Point<Float32>;
    function viewportClamp(point:Point<Float32>):Point<Float32>;
    function draw(params:{
        ?texture: Texture,
        ?sourceRectangle: Rectangle<Float32>,
        destinationRectangle: Rectangle<Float32>,
        ?rotation: Float,
        ?origin: Point<Float32>,
        ?color: RGBA
    }):Void;
    function drawSprite(sprite:Draw2DSprite):Void;
    function drawRaw(?texture:Texture, buffer:TZArray<Float32>, ?count:Int, ?offset:Int):Void;
    function bufferSprite(buffer:TZArray<Float32>, sprite:Draw2DSprite, index:Int):Void;
    function createRenderTarget(params:{
        ?name: String,
        ?backBuffer: Bool,
        ?width: Int,
        ?height: Int
    }):Int;
    function getRenderTarget(renderTargetIndex:Int):Null<RenderTarget>;
    function getRenderTargetTexture(renderTargetIndex:Int):Null<Texture>;
    function setBackBuffer():Bool;
    function setRenderTarget(renderTargetIndex:Int):Bool;
    function copyRenderTarget(renderTargetIndex:Int):Bool;
    function resetPerformanceData():Void;
}
