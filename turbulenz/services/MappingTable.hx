package turbulenz.services;

import turbulenz.util.TZJS;

//TODO

@:native("MappingTable")
@:publicFields
extern class MappingTable {
    static function __init__():Void {
        TZJS.require("utilities");
        TZJS.require("services/mappingtable");
    }
}

