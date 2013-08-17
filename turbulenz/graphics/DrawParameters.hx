package turbulenz.graphics;

import turbulenz.graphics.GraphicsDevice;
import turbulenz.graphics.IndexBuffer;
import turbulenz.graphics.Semantics;
import turbulenz.graphics.Technique;
import turbulenz.graphics.TechniqueParameters;
import turbulenz.graphics.VertexBuffer;

@:native("DrawParameters")
@:publicFields
extern class DrawParameters {
    var count:Int;
    var firstIndex:Int;
    var indexBuffer:IndexBuffer;
    var primitive:Primitive;
    var sortKey:Float;
    var technique:Technique;
    var userData:Dynamic;

    function getOffset(index:Int):Int;
    function getSemantics(index:Int):Null<Semantics>;
    function getTechniqueParameters(index:Int):Null<TechniqueParameters>;
    function getVertexBuffer(index:Int):Null<VertexBuffer>;
    function setOffset(index:Int, offset:Int):Void;
    function setSemantics(index:Int, semantics:Semantics):Void;
    function setTechniqueParameters(index:Int, techniqueParamaters:TechniqueParameters):Void;
    function setVertexBuffer(index:Int, vertexBuffer:VertexBuffer):Void;
}
