package turbulenz;

import turbulenz.Texture;
import turbulenz.RenderTarget;
import turbulenz.Technique;
import turbulenz.TechniqueParameters;
import turbulenz.VertexBuffer;
import turbulenz.RenderBuffer;
import turbulenz.Shader;
import turbulenz.TZArray;
import turbulenz.MathDevice;
import turbulenz.Semantics;

typedef Semantic = Int;
typedef Primitive = Int;
typedef VertexFormat = Int;
typedef PixelFormat = Int;
typedef IndexFormat = Int;
typedef Feature = String;

//TODO
typedef IndexBuffer = Dynamic;
typedef OcclusionQuery = Dynamic;
typedef Video = Dynamic;
typedef TechniqueParameterBuffer = Dynamic;
typedef DrawParameters = Dynamic;

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
    var SEMANTIC_POSITION(default,never):Semantic;
    var SEMANTIC_POSITION0(default,never):Semantic;
    var SEMANTIC_COLOR(default,never):Semantic;
    var SEMANTIC_COLOR0(default,never):Semantic;
    var SEMANTIC_COLOR1(default,never):Semantic;
    var SEMANTIC_NORMAL(default,never):Semantic;
    var SEMANTIC_NORMAL0(default,never):Semantic;
    var SEMANTIC_TEXCOORD(default,never):Semantic;
    var SEMANTIC_TEXCOORD0(default,never):Semantic;
    var SEMANTIC_TEXCOORD1(default,never):Semantic;
    var SEMANTIC_TEXCOORD2(default,never):Semantic;
    var SEMANTIC_TEXCOORD3(default,never):Semantic;
    var SEMANTIC_TEXCOORD4(default,never):Semantic;
    var SEMANTIC_TEXCOORD5(default,never):Semantic;
    var SEMANTIC_TEXCOORD6(default,never):Semantic;
    var SEMANTIC_TEXCOORD7(default,never):Semantic;
    var SEMANTIC_TANGENT(default,never):Semantic;
    var SEMANTIC_TANGENT0(default,never):Semantic;
    var SEMANTIC_BINORMAL0(default,never):Semantic;
    var SEMANTIC_BINORMAL(default,never):Semantic;
    var SEMANTIC_PSIZE(default,never):Semantic;
    var SEMANTIC_PSIZE0(default,never):Semantic;
    var SEMANTIC_BLENDINDICES(default,never):Semantic;
    var SEMANTIC_BLENDINDICES0(default,never):Semantic;
    var SEMANTIC_BLENDWEIGHT(default,never):Semantic;
    var SEMANTIC_BLENDWEIGHT0(default,never):Semantic;
    var SEMANTIC_TESSFACTOR(default,never):Semantic;
    var SEMANTIC_SPECULAR(default,never):Semantic;
    var SEMANTIC_FOGCOORD(default,never):Semantic;
    var SEMANTIC_ATTR0(default,never):Semantic;
    var SEMANTIC_ATTR1(default,never):Semantic;
    var SEMANTIC_ATTR2(default,never):Semantic;
    var SEMANTIC_ATTR3(default,never):Semantic;
    var SEMANTIC_ATTR4(default,never):Semantic;
    var SEMANTIC_ATTR5(default,never):Semantic;
    var SEMANTIC_ATTR6(default,never):Semantic;
    var SEMANTIC_ATTR7(default,never):Semantic;
    var SEMANTIC_ATTR8(default,never):Semantic;
    var SEMANTIC_ATTR9(default,never):Semantic;
    var SEMANTIC_ATTR10(default,never):Semantic;
    var SEMANTIC_ATTR11(default,never):Semantic;
    var SEMANTIC_ATTR12(default,never):Semantic;
    var SEMANTIC_ATTR13(default,never):Semantic;
    var SEMANTIC_ATTR14(default,never):Semantic;
    var SEMANTIC_ATTR15(default,never):Semantic;
    var PRIMITIVE_TRIANGLES(default,never):Primitive;
    var PRIMITIVE_TRIANGLE_STRIP(default,never):Primitive;
    var PRIMITIVE_TRIANGLE_FAN(default,never):Primitive;
    var PRIMITIVE_LINES(default,never):Primitive;
    var PRIMITIVE_LINE_LOOP(default,never):Primitive;
    var PRIMITIVE_LINE_STRIP(default,never):Primitive;
    var PRIMITIVE_POINTS(default,never):Primitive;
    var VERTEXFORMAT_BYTE4(default,never):VertexFormat;
    var VERTEXFORMAT_UBYTE4(default,never):VertexFormat;
    var VERTEXFORMAT_SHORT2(default,never):VertexFormat;
    var VERTEXFORMAT_SHORT4(default,never):VertexFormat;
    var VERTEXFORMAT_USHORT2(default,never):VertexFormat;
    var VERTEXFORMAT_USHORT4(default,never):VertexFormat;
    var VERTEXFORMAT_FLOAT1(default,never):VertexFormat;
    var VERTEXFORMAT_FLOAT2(default,never):VertexFormat;
    var VERTEXFORMAT_FLOAT3(default,never):VertexFormat;
    var VERTEXFORMAT_FLOAT4(default,never):VertexFormat;
    var PIXELFORMAT_A8(default,never):PixelFormat;
    var PIXELFORMAT_L8(default,never):PixelFormat;
    var PIXELFORMAT_L8A8(default,never):PixelFormat;
    var PIXELFORMAT_R5G5B5A1(default,never):PixelFormat;
    var PIXELFORMAT_R5G6B5(default,never):PixelFormat;
    var PIXELFORMAT_R8G8B8A8(default,never):PixelFormat;
    var PIXELFORMAT_R8G8B8(default,never):PixelFormat;
    var PIXELFORMAT_D24S8(default,never):PixelFormat;
    var PIXELFORMAT_DXT1(default,never):PixelFormat;
    var PIXELFORMAT_DXT3(default,never):PixelFormat;
    var PIXELFORMAT_DXT5(default,never):PixelFormat;
    var INDEXFORMAT_UBYTE(default,never):IndexFormat;
    var INDEXFORMAT_USHORT(default,never):IndexFormat;
    var INDEXFORMAT_UINT(default,never):IndexFormat;

    function beginFrame():Bool;
    function endFrame():Void;
    function setViewport(x:Int, y:Int, width:Int, height:Int):Void;
    function setScissor(x:Int, y:Int, width:Int, height:Int):Void;
    function clear(clearColor:RGBA, ?clearDepth:Float, ?clearStencil:Float):Void;

    // dynamic is a reserved word in Haxe.
    inline function createTexture<T>(params:{
        ?src: String,
        ?onload: Texture->?Int->Void,
        ?name: String,
        ?width: Int,
        ?height: Int,
        ?depth: Int,
        ?format: PixelFormat,
        ?mipmaps: Bool,
        ?cubemap: Bool,
        ?renderable: Bool,
        ?_dynamic: Bool,
        ?data: TZArray<T>
    }):Texture return untyped __js__("(function (params) {
        params.dynamic = params._dynamic;
        return this.createTexture(params);
    })").call(this,params);

    function createShader(shaderDefinition:Dynamic):Shader;
    function setTechnique(technique:Technique):Void;

    // dynamic is a reserved word in Haxe.
    inline function creteTechniqueParameterBuffer(params:{
        numFloats: Int,
        _dynamic: Bool
    }):TechniqueParameterBuffer return untyped __js__("(function (params) {
        params.dynamic = params._dynamic;
        return this.createTechniqueParameterBuffer(params);
    })").call(this, params);

    function createTechniqueParameters(params:Dynamic):TechniqueParameters;
    function setTechniqueParameters(globalTechniqueParameters:TechniqueParameters):Void;
    function createSemantics(semanticValues:Array<Semantic>):Semantics;

    // dynamic is a reserved word in Haxe.
    inline function createVertexBuffer<T>(params:{
        numVertices: Int,
        attributes: Array<VertexFormat>,
        ?_dynamic: Bool,
        ?transient: Bool,
        ?data: TZArray<T>
    }):VertexBuffer return untyped __js__("(function (params) {
        params.dynamic = params._dynamic;
        return this.createVertexBuffer(params);
    })").call(this, params);

    function setStream(vertexBuffer:VertexBuffer, semantics:Semantics, ?offset:Int):Void;

    // dynamic is a reserved word in Haxe.
    inline function createIndexBuffer<T>(params:{
        numVertices: Int,
        format: IndexFormat,
        ?_dynamic: Bool,
        ?transient: Bool,
        ?data: TZArray<T>
    }):IndexBuffer return untyped __js__("(function (params) {
        params.dynamic = params._dynamic;
        return this.createIndexBuffer(params);
    })").call(this, params);

    function setIndexBuffer(buffer:IndexBuffer):Void;
    function createDrawParameters():DrawParameters;
    function drawIndexed(primitive:Primitive, numIndices:Int, ?first:Int):Void;
    function draw(primitive:Primitive, numVertices:Int, ?first:Int):Void;
    function drawArray(drawParameters:Array<DrawParameters>, globalTechniqueParameters:Array<TechniqueParameters>, sortMode:Int):Void;
    function beginDraw(primitive:Primitive, numVertices:Int, vertexFormats:Array<VertexFormat>, semantics:Semantics):VertexWriteIterator;
    function endDraw(write:VertexWriteIterator):Void;
    function createRenderBuffer(params:{
        width: Int,
        height: Int,
        format: PixelFormat
    }):Null<RenderBuffer>;
    function createRenderTarget(params:{
        colorTexture0: Texture,
        ?colorTexture1: Texture,
        ?colorTexture2: Texture,
        ?colorTexture3: Texture,
        ?depthBuffer: RenderBuffer,
        ?depthTexture: RenderBuffer
    }):RenderTarget;
    function beginRenderTarget(target:RenderTarget):Bool;
    function endRenderTarget():Void;
    function createOcclusionQuery():OcclusionQuery;
    function beginOcclusionQuery(query:OcclusionQuery):Bool;
    function endOcclusionQuery():Void;
    function loadTexturesArchive(params:{
        src: String,
        ontextureload: Texture->Void,
        onload: Bool->Int->Void
    }):Bool;
    function getScreenshot(?compress:Bool, ?x:Int, ?y:Int, ?width:Int, ?height:Int):TZArray<UInt8>;
    function isSupported(feature:Feature):Bool;
    function maxSupported(feature:Feature):Int;
    function createVideo(params:{
        src: String,
        ?looping: Bool,
        onload: Video->Void
    }):Video;
    function flush():Void;
    function finish():Void;
}

