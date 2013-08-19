package turbulenz.services;

import turbulenz.services.GameSession;
import turbulenz.services.MappingTable;
import turbulenz.util.TZJS;

// TODO

@:native("TurbulenzServices")
@:publicFields
extern class TurbulenzServices {
    static function __init__():Void {
        TZJS.require("utilities");
        TZJS.require("services/turbulenzbridge");
        TZJS.require("services/turbulenzservices");
    }

    static function createGameSession(
        handler:RequestHandler<String>,
        sessionCreatedFn:Void->Void,
        ?errorCallbackFn:String->Int->Void
    ):GameSession;
    static function createMappingTable(
        handler:RequestHandler<String>,
        gameSession:GameSession,
        tableReceivedFn:MappingTable->Void,
        ?defaultMappingSettings:Dynamic,
        ?errorCallbackFn:String->Int->Void
    ):MappingTable;
}
