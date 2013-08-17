package turbulenz.physics2d;

@:native("Physics2DMaterial")
@:publicFields
extern class Material {
    var userData:Dynamic;

    function getDensity():Float;
    function getDynamicFriction():Float;
    function getElasticity():Float;
    function getRollingFriction():Float;
    function getStaticFriction():Float;
}
