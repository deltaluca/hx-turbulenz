package turbulenz;

typedef KeyCode = Int;
typedef KeyCodes = {
    A:KeyCode,
    APOSTROPHE:KeyCode,
    BACKSPACE:KeyCode,
    B:KeyCode,
    CAPS_LOCK:KeyCode,
    C:KeyCode,
    COMMA:KeyCode,
    DELETE:KeyCode,
    D:KeyCode,
    DOWN:KeyCode,
    E:KeyCode,
    END:KeyCode,
    EQUALS:KeyCode,
    ESCAPE:KeyCode,
    F10:KeyCode,
    F11:KeyCode,
    F12:KeyCode,
    F1:KeyCode,
    F2:KeyCode,
    F3:KeyCode,
    F4:KeyCode,
    F5:KeyCode,
    F6:KeyCode,
    F7:KeyCode,
    F8:KeyCode,
    F9:KeyCode,
    F:KeyCode,
    G:KeyCode,
    GRAVE:KeyCode,
    H:KeyCode,
    HOME:KeyCode,
    I:KeyCode,
    INSERT:KeyCode,
    J:KeyCode,
    K:KeyCode,
    LEFT_ALT:KeyCode,
    LEFT_BRACKET:KeyCode,
    LEFT_CONTROL:KeyCode,
    LEFT:KeyCode,
    LEFT_OPTION:KeyCode,
    LEFT_SHIFT:KeyCode,
    LEFT_WIN:KeyCode,
    L:KeyCode,
    MINUS:KeyCode,
    M:KeyCode,
    N:KeyCode,
    NUMBER_0:KeyCode,
    NUMBER_1:KeyCode,
    NUMBER_2:KeyCode,
    NUMBER_3:KeyCode,
    NUMBER_4:KeyCode,
    NUMBER_5:KeyCode,
    NUMBER_6:KeyCode,
    NUMBER_7:KeyCode,
    NUMBER_8:KeyCode,
    NUMBER_9:KeyCode,
    NUMPAD_0:KeyCode,
    NUMPAD_1:KeyCode,
    NUMPAD_2:KeyCode,
    NUMPAD_3:KeyCode,
    NUMPAD_4:KeyCode,
    NUMPAD_5:KeyCode,
    NUMPAD_6:KeyCode,
    NUMPAD_7:KeyCode,
    NUMPAD_8:KeyCode,
    NUMPAD_9:KeyCode,
    NUMPAD_ADD:KeyCode,
    NUMPAD_DIVIDE:KeyCode,
    NUMPAD_ENTER:KeyCode,
    NUMPAD_MULTIPLY:KeyCode,
    NUMPAD_SUBTRACT:KeyCode,
    O:KeyCode,
    PAGE_DOWN:KeyCode,
    PAGE_UP:KeyCode,
    PERIOD:KeyCode,
    P:KeyCode,
    Q:KeyCode,
    RETURN:KeyCode,
    RIGHT_ALT:KeyCode,
    RIGHT_BRACKET:KeyCode,
    RIGHT_CONTROL:KeyCode,
    RIGHT:KeyCode,
    RIGHT_OPTION:KeyCode,
    RIGHT_SHIFT:KeyCode,
    RIGHT_WIN:KeyCode,
    R:KeyCode,
    SEMI_COLON:KeyCode,
    S:KeyCode,
    SPACE:KeyCode,
    TAB:KeyCode,
    T:KeyCode,
    U:KeyCode,
    UP:KeyCode,
    V:KeyCode,
    W:KeyCode,
    X:KeyCode,
    Y:KeyCode,
    Z:KeyCode
};

typedef MouseCode = Int;
typedef MouseCodes = {
    BUTTON_0:MouseCode,
    BUTTON_1:MouseCode,
    BUTTON_2:MouseCode
};

typedef PadCode = Int;
typedef PadCodes = {
    A:PadCode,
    BACK:PadCode,
    B:PadCode,
    DOWN:PadCode,
    LEFT:PadCode,
    LEFT_SHOULDER:PadCode,
    LEFT_THUMB:PadCode,
    LEFT_THUMB_X:PadCode,
    LEFT_THUMB_Y:PadCode,
    LEFT_TRIGGER:PadCode,
    RIGHT:PadCode,
    RIGHT_SHOULDER:PadCode,
    RIGHT_THUMB:PadCode,
    RIGHT_THUMB_X:PadCode,
    RIGHT_THUMB_Y:PadCode,
    RIGHT_TRIGGER:PadCode,
    START:PadCode,
    UP:PadCode,
    X:PadCode,
    Y:PadCode
};

@:fakeEnum abstract InputDeviceEvent(String) from String to String {
    var blur = 'blur';
    var focus = 'focus';
    var keydown = 'keydown';
    var keyup = 'keyup';
    var mousedown = 'mousedown';
    var mouseenter = 'mouseenter';
    var mouseleave = 'mouseleave';
    var mouselocklost = 'mouselocklost';
    var mousemove = 'mousemove';
    var mouseover = 'mouseover';
    var mouseup = 'mouseup';
    var mousewheel = 'mousewheel';
    var paddown = 'paddown';
    var padup = 'padup';
    var touchcancel = 'touchcancel';
    var touchend = 'touchend';
    var touchenter = 'touchenter';
    var touchleave = 'touchleave';
    var touchmove = 'touchmove';
    var touchstart = 'touchstart';
}

@:fakeEnum abstract Feature(String) from String to String {
    var POINTER_LOCK = 'POINTER_LOCK';
}

@:native("InputDevice")
@:publicFields
extern class InputDevice {
    var keyCodes(default,never):KeyCodes;
    var mouseCodes(default,never):MouseCodes;
    var padCodes(default,never):PadCodes;

    function addEventListener(eventType:InputDeviceEvent, eventListener:Dynamic):Void;
    function convertToUnicode(keyCodes:Array<KeyCode>):Dynamic;
    function hideMouse():Bool;
    function isFocused():Bool;
    function isHidden():Bool;
    function isLocked():Bool;
    function isSupported(feature:Feature):Bool;
    function lockMouse():Bool;
    function removeEventListener(eventType:InputDeviceEvent, eventListener:Dynamic):Void;
    function showMouse():Bool;
    function update():Void;
}
