package turbulenz;

import turbulenz.GraphicsDevice;
import turbulenz.Texture;
import turbulenz.RenderTarget;
import turbulenz.Technique;
import turbulenz.VMath;

typedef ScaleMode = String;
typedef SortMode = String;
typedef BlendMode = String;

// TODO
typedef Draw2DSprite = Dynamic;

@:native("Draw2D")
@:publicFields
extern class Draw2D {
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
        ?viewportRectangle: Rectangle
    }):Void;
    function destroy():Void;
    function begin(?blendMode:BlendMode, ?sortMode:SortMode):Bool;
    function end():Bool;
    function clear(?clearColor:RGBA):Bool;
    function getViewport(?viewport:Rectangle):Rectangle;
    function getScreenSpaceViewport(?viewport:Rectangle):Rectangle;
    function viewportMap(x:Float, y:Float, ?point:Point):Point;
    function viewportUnmap(x:Float, y:Float, ?point:Point):Point;
    function viewportClamp(point:Point):Point;
    function draw(params:{
        ?texture: Texture,
        ?sourceRectangle: Rectangle,
        destinationRectangle: Rectangle,
        ?rotation: Float,
        ?origin: Point,
        ?color: RGBA
    }):Void;
    function drawSprite(sprite:Draw2DSprite):Void;
    function drawRaw(?texture:Texture, buffer:VArray, ?count:Int, ?offset:Int):Void;
    function bufferSprite(buffer:VArray, sprite:Draw2DSprite, index:Int):Void;
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
