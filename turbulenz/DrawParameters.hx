package turbulenz;

import turbulenz.GraphicsDevice;
import turbulenz.Technique;
import turbulenz.IndexBuffer;
import turbulenz.TechniqueParameters;
import turbulenz.VertexBuffer;
import turbulenz.Semantics;

@:native("DrawParameters")
@:publicFields
extern class DrawParameters {
    var technique:Technique;
    var primitive:Primitive;
    var indexBuffer:IndexBuffer;
    var count:Int;
    var firstIndex:Int;
    var sortKey:Float;
    var userData:Dynamic;

    function setTechniqueParameters(index:Int, techniqueParamaters:TechniqueParameters):Void;
    function setVertexBuffer(index:Int, vertexBuffer:VertexBuffer):Void;
    function setSemantics(index:Int, semantics:Semantics):Void;
    function setOffset(index:Int, offset:Int):Void;
    function getTechniqueParameters(index:Int):Null<TechniqueParameters>;
    function getVertexBuffer(index:Int):Null<VertexBuffer>;
    function getSemantics(index:Int):Null<Semantics>;
    function getOffset(index:Int):Int;
}
