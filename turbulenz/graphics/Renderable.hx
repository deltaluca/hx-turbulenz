package turbulenz.graphics;

import turbulenz.graphics.Camera;
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
    function getWorldExtents():AABB;
    function hasCustomWorldExtents():Bool;
    function removeCustomWorldExtents():Void;
    function setMaterial(material:Material):Void;
    function getNode():Null<SceneNode>;

    var diffuseDrawParameters:DrawParameters;
    var disabled:Bool;
    var drawParameters:DrawParameters;
    var geometryType:String;
    var shadowDrawParameters:DrawParameters;
    var sharedMaterial:Material;
    var worldExtents:AABB;
    var distance:Float; // not set by implementation.
    var frameVisible:Int; // not set by implementation
    var rendererInfo:Dynamic; // TODO

    // ---------------------------------------
    // undocumented in turbulenz api
    //
    var halfExtents:Null<Vector3>;
    var center:Null<Vector3>;
    function setNode(node:SceneNode):Void; // Called by SceneNode when add/removeRenderable is called.
    var queryCounter:Int; // not set by implementation
    var diffuseShadowDrawParameters:DrawParameters;
    var shadowMappingDrawParametres:DrawParameters;
    var geometry:Dynamic; // TODO
    var surface:Dynamic; // TODO
    var techniqueParameters:TechniqueParameters;
    var skinController:Dynamic; // TODO
    var isNormal:Bool;
    var node:Null<SceneNode>; // should be set by setNode.
    var normalInfos:Dynamic; // TODO

    function isSkinned():Bool;
    var renderUpdate:Null<Camera->Void>; // else sharedMaterial.effect is used to allocate renderUpdate. Update drawParameters here.
}

/*
   /// undocumented in turbulenz api docs

   f renderable.isSkinned (animation)
   f renderable.renderUpdate (simple,deferred,default,forward renderers)
   f renderable.setNode (scenenode)

   p renderable.center (scenenode)
   p renderable.diffuseShadowDrawParameters (forwardrendering)
   p renderable.geometry (scenedebugging)
   p renderable.halfExtents (scenenode)
   p renderable.isNormal  (scenedebugging)
   p renderable.node (deferred,forward renderers, scenedebugging, shadowmapping)
   p renderable.normalsInfo (scenedebugging)
   p renderable.queryCounter (scene)
   p renderable.shadowMappingDrawParameters (shadowmapping)
   p renderable.skinController (animation, scenedebugging)
   p renderable.surface  (scene, scenedebugging)
   p renderable.techniqueParameters (scene, forwardrendering)
*/

