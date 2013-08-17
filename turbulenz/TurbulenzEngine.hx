package turbulenz;

import turbulenz.graphics.GraphicsDevice;
import turbulenz.MathDevice;
import turbulenz.InputDevice;
import turbulenz.net.NetworkDevice;
import turbulenz.sound.SoundDevice;
import turbulenz.physics3d.PhysicsDevice;

typedef Canvas = Dynamic;

@:native("TurbulenzEngine")
@:publicFields
extern class TurbulenzEngine {
    static var onload:Void->Void;
    static var onunload:Void->Void;
    static var version(default,never):String;
    static var encryptionEnabled(default,never):Null<Bool>;
    static var top(default,never):Int;
    static var left(default,never):Int;
    static var width(default,never):Int;
    static var height(default,never):Int;
    static var time(default,never):Float;
    static var onerror:String->Void;
    static var onwarning:String->Void;
    static var canvas:Null<Canvas>;

    static function createGraphicsDevice(params:{
        ?vsync: Bool,
        ?multisample: Int
    }):GraphicsDevice;
    static function getGraphicsDevice():Null<GraphicsDevice>;
    static function createPhysicsDevice(params:{}):PhysicsDevice;
    static function getPhysicsDevice():Null<PhysicsDevice>;
    static function createSoundDevice(params:{
        ?deviceSpecifier: String,
        ?linearDistance: Bool
    }):SoundDevice;
    static function getSoundDevice():Null<SoundDevice>;
    static function createNetworkDevice(params:{}):NetworkDevice;
    static function getNetworkDevice():Null<NetworkDevice>;
    static function createInputDevice(params:{}):InputDevice;
    static function getInputDevice():Null<InputDevice>;
    static function createMathDevice(params:{}):MathDevice;
    static function getMathDevice():Null<MathDevice>;
    static function encrypt(plainText:String):Null<String>;
    static function decrypt(encryptedString:String):Null<String>;
    static function generatedSignature(str:String):Null<String>;
    static function verifySignature(originalStr:String, originalSignature:String):Bool;
    static function request(resource:String, onLoadedData:String->Int->Void):Bool;
    static function setTimeout(timeoutFunction:Void->Void, delay:Float):Int;
    static function setInterval(intervalFunction:Void->Void, delay:Float):Int;
    static function clearTimeout(timeoutID:Int):Void;
    static function clearInterval(intervalID:Int):Void;
    static function flush():Void;
    static function getSystemInfo():{
        cpuDescription: String,
        cpuVendor: String,
        numPhysicalCores: Int,
        numLogicalCores: Int,
        ramInMegabytes: Float,
        frequencyInMegaHZ: Float,
        architecture: String,
        osName: String,
        osVersionMajor: String,
        osVersionMinor: String,
        osVersionBuild: String,
        platformProfile: String,
        userLocale: String
    };
    static function getObjectStats():Dynamic<{totalCount:Int}>;
    static function enableProfiling(enable:Bool):Void;
    static function startProfiling():Void;
    static function stopProfiling():Dynamic;
    static function unload():Void;
    static function isUnloading():Bool;
}
