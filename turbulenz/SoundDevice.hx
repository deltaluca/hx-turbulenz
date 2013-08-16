package turbulenz;

import turbulenz.MathDevice;

// TODO
typedef Sound = Dynamic;
typedef Source = Dynamic;
typedef SoundFilter = Dynamic;
typedef SoundEffect = Dynamic;
typedef SoundEffectSlot = Dynamic;

@:fakeEnum abstract SoundDeviceFeature(String) {
    var FILEFORMAT_OGG = 'FILEFORMAT_OGG';
    var FILEFORMAT_MP3 = 'FILEFORMAT_MP3';
    var FILEFORMAT_WAV = 'FILEFORMAT_WAV';
}

@:native("SoundDevice")
@:publicFields
extern class SoundDevice {
    var vendor(default,never):String;
    var renderer(default,never):String;
    var version(default,never):String;
    var deviceSpecifier(default,never):String;
    var extensions(default,never):String;
    var listenerTransform:Matrix43;
    var listenerVelocity:Vector3;
    var listenerGain:Float;
    var frequency:Int;
    var dopplerFactor:Float;
    var dopplerVelocity:Float;
    var speedOfSound:Float;
    var alcVersion(default,never):String;
    var alcEfxVersion(default,never):String;
    var alcMaxAuxiliarySends(default,never):Int;

    function createSource(params:{
        ?position: Vector3,
        ?direction: Vector3,
        ?velocity: Vector3,
        ?gain:Float,
        ?minDistance:Float,
        ?maxDistance:Float,
        ?rollOff:Float,
        ?looping:Bool,
        ?pitch:Float,
        ?relative:Bool
    }):Source;

    @:overload(function (params:{
        src: String,
        ?uncompress: Bool,
        onload: Null<Sound>->Int->Void
    }):Null<Sound> {})
    function createSound(params:{
        name: String,
        data: Dynamic, // TODO What is the correct type for this??
        ?channels: Int,
        ?frequency: Int,
        onload: Null<Sound>->Void
    }):Null<Sound>;

    function loadSoundsArchive(params:{
        src: String,
        ?uncompress: Bool,
        onsoundload: Null<Sound>->Void,
        onload: Bool->Int->Void
    }):Bool;

    function createEffect(params:Dynamic):Null<SoundEffect>;
    function createEffectSlot(params:{
        effect: String,
        gain: Float
    }):Null<SoundEffectSlot>;
    function createFilter(params:Dynamic):Null<SoundFilter>;

    function update():Void;
    function isSupported(feature:SoundDeviceFeature):Bool;
}
