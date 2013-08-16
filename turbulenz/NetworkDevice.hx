package turbulenz;

@:native("NetworkDevice")
@:publicFields
extern class NetworkDevice {
    function createWebSocket(arg0:Dynamic):js.html.WebSocket;
    function update():Void;
}
