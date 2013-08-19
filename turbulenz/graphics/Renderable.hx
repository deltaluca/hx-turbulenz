package turbulenz.graphics;

import turbulenz.graphics.DrawParameters;
import turbulenz.graphics.SceneNode;
import turbulenz.graphics.Material;
import turbulenz.MathDevice;

@:publicFields
interface Renderable {
    function addCustomWorldExtents(extents:AABB):Void;
    function clone():Renderable;
    function destroy():Void;
    function getCustomWorldExtents():Null<AABB>;
    function getMaterial():Material;
    function getNode():SceneNode;
    function getWorldExtents():AABB;
    function hasCustomWorldExtents():Bool;
    function removeCustomWorldExtents():Void;
    function setMaterial(material:Material):Void;

    var diffuseDrawParameters:DrawParameters;
    var disabled:Bool;
    var drawParameters:DrawParameters;
    var geometryType:String;
    var shadowDrawParameters:DrawParameters;
    var sharedMaterial:Material;
    var worldExtents:AABB;

    // Used by Renderer
    var distance:Float;
    var frameVisible:Int;
    var rendererInfo:Dynamic;
}
