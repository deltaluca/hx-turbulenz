package turbulenz.graphics;

import turbulenz.graphics.DrawParameters;
import turbulenz.graphics.IndexBuffer;
import turbulenz.graphics.OcclusionQuery;
import turbulenz.graphics.RenderBuffer;
import turbulenz.graphics.RenderTarget;
import turbulenz.graphics.Semantics;
import turbulenz.graphics.Shader;
import turbulenz.graphics.Technique;
import turbulenz.graphics.TechniqueParameterBuffer;
import turbulenz.graphics.TechniqueParameters;
import turbulenz.graphics.Texture;
import turbulenz.graphics.VertexBuffer;
import turbulenz.graphics.Video;
import turbulenz.MathDevice;
import turbulenz.util.TZArray;

typedef GraphicsDeviceFeature = String;
typedef IndexFormat = Int;
typedef PixelFormat = Int;
typedef Primitive = Int;
typedef Semantic = Int;
typedef VertexFormat = Int;

@:native("GraphicsDevice")
@:publicFields
extern class GraphicsDevice {
    var desktopHeight(default,never):Int;
    var desktopWidth(default,never):Int;
    var extensions(default,never):String;
    var fps(default,never):Float;
    var fullscreen:Bool;
    var height(default,never):Int;
    var renderer(default,never):String;
    var rendererVersion(default,never):String;
    var shadingLanguageVersion(default,never):String;
    var vendor(default,never):String;
    var videoRam(default,never):Float;
    var width(default,never):Int;

    var SEMANTIC_ATTR0(default,never):Semantic;
    var SEMANTIC_ATTR10(default,never):Semantic;
    var SEMANTIC_ATTR11(default,never):Semantic;
    var SEMANTIC_ATTR12(default,never):Semantic;
    var SEMANTIC_ATTR13(default,never):Semantic;
    var SEMANTIC_ATTR14(default,never):Semantic;
    var SEMANTIC_ATTR15(default,never):Semantic;
    var SEMANTIC_ATTR1(default,never):Semantic;
    var SEMANTIC_ATTR2(default,never):Semantic;
    var SEMANTIC_ATTR3(default,never):Semantic;
    var SEMANTIC_ATTR4(default,never):Semantic;
    var SEMANTIC_ATTR5(default,never):Semantic;
    var SEMANTIC_ATTR6(default,never):Semantic;
    var SEMANTIC_ATTR7(default,never):Semantic;
    var SEMANTIC_ATTR8(default,never):Semantic;
    var SEMANTIC_ATTR9(default,never):Semantic;
    var SEMANTIC_BINORMAL0(default,never):Semantic;
    var SEMANTIC_BINORMAL(default,never):Semantic;
    var SEMANTIC_BLENDINDICES0(default,never):Semantic;
    var SEMANTIC_BLENDINDICES(default,never):Semantic;
    var SEMANTIC_BLENDWEIGHT0(default,never):Semantic;
    var SEMANTIC_BLENDWEIGHT(default,never):Semantic;
    var SEMANTIC_COLOR0(default,never):Semantic;
    var SEMANTIC_COLOR1(default,never):Semantic;
    var SEMANTIC_COLOR(default,never):Semantic;
    var SEMANTIC_FOGCOORD(default,never):Semantic;
    var SEMANTIC_NORMAL0(default,never):Semantic;
    var SEMANTIC_NORMAL(default,never):Semantic;
    var SEMANTIC_POSITION0(default,never):Semantic;
    var SEMANTIC_POSITION(default,never):Semantic;
    var SEMANTIC_PSIZE0(default,never):Semantic;
    var SEMANTIC_PSIZE(default,never):Semantic;
    var SEMANTIC_SPECULAR(default,never):Semantic;
    var SEMANTIC_TANGENT0(default,never):Semantic;
    var SEMANTIC_TANGENT(default,never):Semantic;
    var SEMANTIC_TESSFACTOR(default,never):Semantic;
    var SEMANTIC_TEXCOORD0(default,never):Semantic;
    var SEMANTIC_TEXCOORD1(default,never):Semantic;
    var SEMANTIC_TEXCOORD2(default,never):Semantic;
    var SEMANTIC_TEXCOORD3(default,never):Semantic;
    var SEMANTIC_TEXCOORD4(default,never):Semantic;
    var SEMANTIC_TEXCOORD5(default,never):Semantic;
    var SEMANTIC_TEXCOORD6(default,never):Semantic;
    var SEMANTIC_TEXCOORD7(default,never):Semantic;
    var SEMANTIC_TEXCOORD(default,never):Semantic;

    var PRIMITIVE_LINE_LOOP(default,never):Primitive;
    var PRIMITIVE_LINES(default,never):Primitive;
    var PRIMITIVE_LINE_STRIP(default,never):Primitive;
    var PRIMITIVE_POINTS(default,never):Primitive;
    var PRIMITIVE_TRIANGLE_FAN(default,never):Primitive;
    var PRIMITIVE_TRIANGLES(default,never):Primitive;
    var PRIMITIVE_TRIANGLE_STRIP(default,never):Primitive;

    var VERTEXFORMAT_BYTE4(default,never):VertexFormat;
    var VERTEXFORMAT_FLOAT1(default,never):VertexFormat;
    var VERTEXFORMAT_FLOAT2(default,never):VertexFormat;
    var VERTEXFORMAT_FLOAT3(default,never):VertexFormat;
    var VERTEXFORMAT_FLOAT4(default,never):VertexFormat;
    var VERTEXFORMAT_SHORT2(default,never):VertexFormat;
    var VERTEXFORMAT_SHORT4(default,never):VertexFormat;
    var VERTEXFORMAT_UBYTE4(default,never):VertexFormat;
    var VERTEXFORMAT_USHORT2(default,never):VertexFormat;
    var VERTEXFORMAT_USHORT4(default,never):VertexFormat;

    var PIXELFORMAT_A8(default,never):PixelFormat;
    var PIXELFORMAT_D24S8(default,never):PixelFormat;
    var PIXELFORMAT_DXT1(default,never):PixelFormat;
    var PIXELFORMAT_DXT3(default,never):PixelFormat;
    var PIXELFORMAT_DXT5(default,never):PixelFormat;
    var PIXELFORMAT_L8A8(default,never):PixelFormat;
    var PIXELFORMAT_L8(default,never):PixelFormat;
    var PIXELFORMAT_R5G5B5A1(default,never):PixelFormat;
    var PIXELFORMAT_R5G6B5(default,never):PixelFormat;
    var PIXELFORMAT_R8G8B8A8(default,never):PixelFormat;
    var PIXELFORMAT_R8G8B8(default,never):PixelFormat;

    var INDEXFORMAT_UBYTE(default,never):IndexFormat;
    var INDEXFORMAT_UINT(default,never):IndexFormat;
    var INDEXFORMAT_USHORT(default,never):IndexFormat;

    function beginDraw(primitive:Primitive, numVertices:Int, vertexFormats:Array<VertexFormat>, semantics:Semantics):VertexWriteIterator;
    function beginFrame():Bool;
    function beginOcclusionQuery(query:OcclusionQuery):Bool;
    function beginRenderTarget(target:RenderTarget):Bool;
    function clear(clearColor:RGBA, ?clearDepth:Float, ?clearStencil:Float):Void;
    function createDrawParameters():DrawParameters;
    function createOcclusionQuery():OcclusionQuery;
    function createRenderBuffer(params:{
        format: PixelFormat,
        height: Int,
        width: Int
    }):Null<RenderBuffer>;
    function createRenderTarget(params:{
        colorTexture0: Texture,
        ?colorTexture1: Texture,
        ?colorTexture2: Texture,
        ?colorTexture3: Texture,
        ?depthBuffer: RenderBuffer,
        ?depthTexture: RenderBuffer
    }):RenderTarget;
    function createSemantics(semanticValues:Array<Semantic>):Semantics;
    function createShader(shaderDefinition:Dynamic):Shader;
    function createTechniqueParameters(params:Dynamic):TechniqueParameters;
    function createVideo(params:{
        ?looping: Bool,
        onload: Video->Void,
        src: String
    }):Video;
    function drawArray(drawParameters:Array<DrawParameters>, globalTechniqueParameters:Array<TechniqueParameters>, sortMode:Int):Void;
    function drawIndexed(primitive:Primitive, numIndices:Int, ?first:Int):Void;
    function draw(primitive:Primitive, numVertices:Int, ?first:Int):Void;
    function endDraw(write:VertexWriteIterator):Void;
    function endFrame():Void;
    function endOcclusionQuery():Void;
    function endRenderTarget():Void;
    function finish():Void;
    function flush():Void;
    function getScreenshot(?compress:Bool, ?x:Int, ?y:Int, ?width:Int, ?height:Int):TZArray<UInt8>;
    function isSupported(feature:GraphicsDeviceFeature):Bool;
    function loadTexturesArchive(params:{
        onload: Bool->Int->Void,
        ontextureload: Texture->Void,
        src: String
    }):Bool;
    function maxSupported(feature:GraphicsDeviceFeature):Int;
    function setIndexBuffer(buffer:IndexBuffer):Void;
    function setScissor(x:Int, y:Int, width:Int, height:Int):Void;
    function setStream(vertexBuffer:VertexBuffer, semantics:Semantics, ?offset:Int):Void;
    function setTechniqueParameters(globalTechniqueParameters:TechniqueParameters):Void;
    function setTechnique(technique:Technique):Void;
    function setViewport(x:Int, y:Int, width:Int, height:Int):Void;

    // dynamic is a reserved word in Haxe.
    inline function createIndexBuffer<T>(params:{
        ?data: TZArray<T>,
        ?_dynamic: Bool,
        format: IndexFormat,
        numIndices: Int,
        ?transient: Bool
    }):IndexBuffer return untyped __js__("(function (params) {
        params.dynamic = params._dynamic;
        return this.createIndexBuffer(params);
    })").call(this, params);

    inline function creteTechniqueParameterBuffer(params:{
        _dynamic: Bool,
        numFloats: Int,
    }):TechniqueParameterBuffer return untyped __js__("(function (params) {
        params.dynamic = params._dynamic;
        return this.createTechniqueParameterBuffer(params);
    })").call(this, params);

    inline function createTexture<T>(params:{
        ?cubemap: Bool,
        ?data: TZArray<T>,
        ?depth: Int,
        ?_dynamic: Bool,
        ?format: PixelFormat,
        ?height: Int,
        ?mipmaps: Bool,
        ?name: String,
        ?onload: Null<Texture>->Int->Void,
        ?renderable: Bool,
        ?src: String,
        ?width: Int
    }):Texture return untyped __js__("(function (params) {
        params.dynamic = params._dynamic;
        return this.createTexture(params);
    })").call(this,params);

    inline function createVertexBuffer<T>(params:{
        attributes: Array<VertexFormat>,
        ?data: TZArray<T>,
        ?_dynamic: Bool,
        numVertices: Int,
        ?transient: Bool
    }):VertexBuffer return untyped __js__("(function (params) {
        params.dynamic = params._dynamic;
        return this.createVertexBuffer(params);
    })").call(this, params);
}

