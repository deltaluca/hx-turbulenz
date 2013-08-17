package turbulenz;

typedef RequestFn<T> = String->(T->Int->Void)->RequestContext<T>->Void;

typedef RequestContext<T> = {
    src: String,
    ?requestOwner: {request: RequestFn<T>},
    ?requestFn: RequestFn<T>,
    onload: T->Int->RequestContext<T>->Void,
    ?userData: Dynamic
};

@:fakeEnum abstract RequestHandlerEvent(String) from String to String {
    var eventOnLoad = 'eventOnLoad';
}

typedef Reason = Int;

@:native("RequestHandler")
@:publicFields
extern class RequestHandler<T> {
    static function __init__():Void {
        turbulenz.TZJS.require("observer");
        turbulenz.TZJS.require("requesthandler");
    }

    var initialRetryTime:Int;
    var notifyTime:Int;
    var maxRetryTime:Int;
    var onReconnected:Reason->RequestContext<T>->Void;
    var onRequestTimeout:Reason->RequestContext<T>->Void;
    var reasonConnectionLost(default,never):Reason;
    var reasonServiceBusy(default,never):Reason;

    static function create<T>(params:{
        ?initialRetryTime: Int,
        ?notifyTime: Int,
        ?maxRetryTime: Int,
        ?onReconnected:Reason->RequestContext<T>->Void,
        ?onRequestTimeout:Reason->RequestContext<T>->Void
    }):RequestHandler<T>;

    function request(params:RequestContext<T>):Void;
    function addEventListener(event:RequestHandlerEvent, listener:Dynamic):Void;
    function removeEventListener(event:RequestHandlerEvent, listener:Dynamic):Void;
    function destroy():Void;
}
