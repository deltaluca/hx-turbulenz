package turbulenz.graphics;

import turbulenz.graphics.Camera;
import turbulenz.graphics.Light;
import turbulenz.graphics.Renderable;
import turbulenz.graphics.SceneNode;
import turbulenz.MathDevice;
import turbulenz.util.TZJS;

@:native("Scene")
@:publicFields
extern class Scene {
    static function __init__():Void {
        TZJS.require("aabbtree");
        TZJS.require("geometry");
        TZJS.require("indexbuffermanager");
        TZJS.require("light");
        TZJS.require("material");
        TZJS.require("scene");
        TZJS.require("scenenode");
        TZJS.require("utilities");
        TZJS.require("vertexbuffermanager");
    }

    static function create(mathDevice:MathDevice):Scene;

    // TODO:
    // load, loadMaterial
    function addLight(light:Light):Void;
    function addRootNode(root:SceneNode):Void;
    function clearShapesVertexData():Void;
    function clear():Void;
    function cloneRootNode(root:SceneNode, name:String):SceneNode;
    function destroy():Void;
    function findNode(name:String):Null<SceneNode>;
    function getCurrentVisibleLights():Array<Light>;
    function getCurrentVisibleNodes():Array<SceneNode>;
    function getCurrentVisibleRenderables():Array<Renderable>;
    function getExtents():AABB;
    function getGlobalLights():Array<Light>;
    function getLight(name:String):Null<Light>;
    function getMaterial(name:String):Null<Material>;
    function hasMaterial(name:String):Bool;
    function removeLight(light:Light):Void;
    function removeRootNode(root:SceneNode):Void;
    function updateNodes():Void;
    function updateVisibleNodes(camera:Camera):Void;
    function update():Void;

    var extents(default,never):AABB;
    var maxDistance(default,never):Float;
    var version(default,never):Float;
}
