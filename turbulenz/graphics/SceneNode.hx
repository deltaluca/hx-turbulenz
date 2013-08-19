package turbulenz.graphics;

import turbulenz.graphics.LightInstance;
import turbulenz.graphics.Renderable;
import turbulenz.graphics.Scene;
import turbulenz.MathDevice;
import turbulenz.util.TZJS;

@:native("SceneNode")
@:publicFields
extern class SceneNode {
    static function __init__():Void {
        TZJS.require("aabbtree");
        TZJS.require("scenenode");
    }

    // dynamic is a keyword in Haxe.
    static inline function create(params:{
        ?name: String,
        ?local: Matrix43,
        ?_dynamic: Bool,
        ?disabled: Bool
    }):SceneNode return untyped __js__("(function (params) {
        params.dynamic = params._dynamic;
        return SceneNode.create(params);
    })")(params);

    static function makePath(parentPath:String, childName:String):String;

    function addChild(node:SceneNode):Void;
    function addCustomLocalExtents(extents:AABB):Void;
    function addCustomWorldExtents(extents:AABB):Void;
    function addLightInstanceArray(instances:Array<LightInstance>):Void;
    function addLightInstance(instance:LightInstance):Void;
    function addRenderableArray(renderables:Array<Renderable>):Void;
    function addRenderable(renderable:Renderable):Void;
    function calculateHierarchyWorldExtents():AABB;
    function clone(name:String):SceneNode;
    function destroy():Void;
    function enableHierarchy(enable:Bool):Void;
    function findChild(name:String):Null<SceneNode>;
    function getCustomLocalExtents():Null<AABB>;
    function getCustomWorldExtents():Null<AABB>;
    function getDisabled():Bool;
    function getLocalExtents():AABB;
    function getLocalTransform():Matrix43;
    function getName():String;
    function getPath():String;
    function getRoot():SceneNode;
    function getWorldExtents():AABB;
    function getWorldTransform():Matrix43;
    function hasLightInstance():Bool;
    function hasRenderables():Bool;
    function isInScene():Bool;
    function removeChild(node:SceneNode):Void;
    function removeCustomLocalExtents():Void;
    function removeCustomWorldExtents():Void;
    function removeLightInstance(instance:LightInstance):Void;
    function removeRenderable(renderable:Renderable):Void;
    function setDisabled(disabled:Bool):Void;
    function setDynamic():Void;
    function setLocalTransform(matrix:Matrix43):Void;
    function setStatic():Void;
    function update(scene:Scene):Void;

    var children(default,never):Array<SceneNode>;
    var local(default,never):Matrix43;
    var version(default,never):Float;
    var world(default,never):Matrix43;
    var worldExtents(default,never):AABB;
}

