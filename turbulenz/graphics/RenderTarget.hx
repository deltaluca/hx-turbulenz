package turbulenz.graphics;

import turbulenz.graphics.Texture;
import turbulenz.graphics.RenderBuffer;

@:native("RenderTarget")
@:publicFields
extern class RenderTarget {
    var colorTexture0(default,never):Texture;
    var colorTexture1(default,never):Null<Texture>;
    var colorTexture2(default,never):Null<Texture>;
    var colorTexture3(default,never):Null<Texture>;
    var depthBuffer(default,never):Null<RenderBuffer>;
    var depthTexture(default,never):Null<Texture>;
    var face(default,never):Int;
    var id(default,never):Int;

    function destroy():Void;
    function getHeight():Int;
    function getWidth():Int;
}
