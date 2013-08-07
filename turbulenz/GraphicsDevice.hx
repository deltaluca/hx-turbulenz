package turbulenz;

import turbulenz.Texture;
import turbulenz.VMath;

typedef SemanticAttr = Int;
typedef Primitive = Int;
typedef VertexFormat = Int;
typedef PixelFormat = Int;
typedef IndexFormat = Int;

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
    var SEMANTIC_POSITION(default,never):SemanticAttr;
    var SEMANTIC_POSITION0(default,never):SemanticAttr;
    var SEMANTIC_COLOR(default,never):SemanticAttr;
    var SEMANTIC_COLOR0(default,never):SemanticAttr;
    var SEMANTIC_COLOR1(default,never):SemanticAttr;
    var SEMANTIC_NORMAL(default,never):SemanticAttr;
    var SEMANTIC_NORMAL0(default,never):SemanticAttr;
    var SEMANTIC_TEXCOORD(default,never):SemanticAttr;
    var SEMANTIC_TEXCOORD0(default,never):SemanticAttr;
    var SEMANTIC_TEXCOORD1(default,never):SemanticAttr;
    var SEMANTIC_TEXCOORD2(default,never):SemanticAttr;
    var SEMANTIC_TEXCOORD3(default,never):SemanticAttr;
    var SEMANTIC_TEXCOORD4(default,never):SemanticAttr;
    var SEMANTIC_TEXCOORD5(default,never):SemanticAttr;
    var SEMANTIC_TEXCOORD6(default,never):SemanticAttr;
    var SEMANTIC_TEXCOORD7(default,never):SemanticAttr;
    var SEMANTIC_TANGENT(default,never):SemanticAttr;
    var SEMANTIC_TANGENT0(default,never):SemanticAttr;
    var SEMANTIC_BINORMAL0(default,never):SemanticAttr;
    var SEMANTIC_BINORMAL(default,never):SemanticAttr;
    var SEMANTIC_PSIZE(default,never):SemanticAttr;
    var SEMANTIC_PSIZE0(default,never):SemanticAttr;
    var SEMANTIC_BLENDINDICES(default,never):SemanticAttr;
    var SEMANTIC_BLENDINDICES0(default,never):SemanticAttr;
    var SEMANTIC_BLENDWEIGHT(default,never):SemanticAttr;
    var SEMANTIC_BLENDWEIGHT0(default,never):SemanticAttr;
    var SEMANTIC_TESSFACTOR(default,never):SemanticAttr;
    var SEMANTIC_SPECULAR(default,never):SemanticAttr;
    var SEMANTIC_FOGCOORD(default,never):SemanticAttr;
    var SEMANTIC_ATTR0(default,never):SemanticAttr;
    var SEMANTIC_ATTR1(default,never):SemanticAttr;
    var SEMANTIC_ATTR2(default,never):SemanticAttr;
    var SEMANTIC_ATTR3(default,never):SemanticAttr;
    var SEMANTIC_ATTR4(default,never):SemanticAttr;
    var SEMANTIC_ATTR5(default,never):SemanticAttr;
    var SEMANTIC_ATTR6(default,never):SemanticAttr;
    var SEMANTIC_ATTR7(default,never):SemanticAttr;
    var SEMANTIC_ATTR8(default,never):SemanticAttr;
    var SEMANTIC_ATTR9(default,never):SemanticAttr;
    var SEMANTIC_ATTR10(default,never):SemanticAttr;
    var SEMANTIC_ATTR11(default,never):SemanticAttr;
    var SEMANTIC_ATTR12(default,never):SemanticAttr;
    var SEMANTIC_ATTR13(default,never):SemanticAttr;
    var SEMANTIC_ATTR14(default,never):SemanticAttr;
    var SEMANTIC_ATTR15(default,never):SemanticAttr;
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

    //TODO (other functions)
    function beginFrame():Bool;
    function endFrame():Void;
    function setViewport(x:Int, y:Int, width:Int, height:Int):Void;
    function setScissor(x:Int, y:Int, width:Int, height:Int):Void;
    function clear(clearColor:Array<Float>/*TODO*/, ?clearDepth:Float, ?clearStencil:Float):Void;

    // dynamic is a reserved word in Haxe.
    // work-around via 'using GraphicsDevice_Using'
    //function createTexture(params:{
    //    ?src:String,
    //    ?onload:Texture->?Int->Void,
    //    ?name:String,
    //    ?width:Int,
    //    ?height:Int,
    //    ?depth:Int,
    //    ?format:PixelFormat,
    //    ?mipmaps:Bool,
    //    ?cubemap:Bool,
    //    ?renderable:Bool,
    //    ?dynamic:Bool,
    //    ?data:VArray
    //}):Texture;
}

class GraphicsDevice_Using {
    static function createTexture(gd:GraphicsDevice, params:{
        ?src:String,
        ?onload:Texture->?Int->Void,
        ?name:String,
        ?width:Int,
        ?height:Int,
        ?depth:Int,
        ?format:PixelFormat,
        ?mipmaps:Bool,
        ?cubemap:Bool,
        ?renderable:Bool,
        ?_dynamic:Bool,
        ?data:VArray
    }):Texture {
        untyped __js__('
            params.dynamic = params._dynamic;
            return gd.createTexture(params);
        ');
        return null;
    }
}
