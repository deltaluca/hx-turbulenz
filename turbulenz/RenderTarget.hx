package turbulenz;

import turbulenz.Texture;
import turbulenz.RenderBuffer;

@:native("RenderTarget")
@:publicFields
extern class RenderTarget {
    var id(default,never):Int;
    var colorTexture0(default,never):Texture;
    var colorTexture1(default,never):Null<Texture>;
    var colorTexture2(default,never):Null<Texture>;
    var colorTexture3(default,never):Null<Texture>;
    var depthBuffer(default,never):Null<RenderBuffer>;
    var depthTexture(default,never):Null<Texture>;
    var face(default,never):Int;

    function getWidth():Int;
    function getHeight():Int;
    function destroy():Void;
}
