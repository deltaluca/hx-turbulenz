package turbulenz.services;

import turbulenz.util.TZJS;

//TODO

@:native("GameSession")
@:publicFields
extern class GameSession {
    static function __init__():Void {
        TZJS.require("utilities");
        TZJS.require("services/gamesession");
        TZJS.require("services/turbulenzservices");
    }

    function destroy():Void;
}
