package turbulenz;

typedef KeyCode = Int;
typedef KeyCodes = {
    A:KeyCode,
    B:KeyCode,
    C:KeyCode,
    D:KeyCode,
    E:KeyCode,
    F:KeyCode,
    G:KeyCode,
    H:KeyCode,
    I:KeyCode,
    J:KeyCode,
    K:KeyCode,
    L:KeyCode,
    M:KeyCode,
    N:KeyCode,
    O:KeyCode,
    P:KeyCode,
    Q:KeyCode,
    R:KeyCode,
    S:KeyCode,
    T:KeyCode,
    U:KeyCode,
    V:KeyCode,
    W:KeyCode,
    X:KeyCode,
    Y:KeyCode,
    Z:KeyCode,
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
    LEFT:KeyCode,
    RIGHT:KeyCode,
    UP:KeyCode,
    DOWN:KeyCode,
    LEFT_SHIFT:KeyCode,
    RIGHT_SHIFT:KeyCode,
    LEFT_CONTROL:KeyCode,
    RIGHT_CONTROL:KeyCode,
    LEFT_ALT:KeyCode,
    ESCAPE:KeyCode,
    TAB:KeyCode,
    SPACE:KeyCode,
    BACKSPACE:KeyCode,
    RETURN:KeyCode,
    GRAVE:KeyCode,
    MINUS:KeyCode,
    EQUALS:KeyCode,
    LEFT_BRACKET:KeyCode,
    RIGHT_BRACKET:KeyCode,
    SEMI_COLON:KeyCode,
    APOSTROPHE:KeyCode,
    COMMA:KeyCode,
    PERIOD:KeyCode,
    RIGHT_ALT:KeyCode,
    F1:KeyCode,
    F2:KeyCode,
    F3:KeyCode,
    F4:KeyCode,
    F5:KeyCode,
    F6:KeyCode,
    F7:KeyCode,
    F8:KeyCode,
    F9:KeyCode,
    F10:KeyCode,
    F11:KeyCode,
    F12:KeyCode,
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
    NUMPAD_ENTER:KeyCode,
    NUMPAD_DIVIDE:KeyCode,
    NUMPAD_MULTIPLY:KeyCode,
    NUMPAD_ADD:KeyCode,
    NUMPAD_SUBTRACT:KeyCode,
    LEFT_WIN:KeyCode,
    RIGHT_WIN:KeyCode,
    LEFT_OPTION:KeyCode,
    RIGHT_OPTION:KeyCode,
    CAPS_LOCK:KeyCode,
    INSERT:KeyCode,
    DELETE:KeyCode,
    HOME:KeyCode,
    END:KeyCode,
    PAGE_UP:KeyCode,
    PAGE_DOWN:KeyCode
};

typedef MouseCode = Int;
typedef MouseCodes = {
    BUTTON_0:MouseCode,
    BUTTON_1:MouseCode,
    BUTTON_2:MouseCode
};

typedef PadCode = Int;
typedef PadCodes = {
    UP:PadCode,
    LEFT:PadCode,
    DOWN:PadCode,
    RIGHT:PadCode,
    A:PadCode,
    B:PadCode,
    X:PadCode,
    Y:PadCode,
    LEFT_TRIGGER:PadCode,
    RIGHT_TRIGGER:PadCode,
    LEFT_SHOULDER:PadCode,
    RIGHT_SHOULDER:PadCode,
    LEFT_THUMB:PadCode,
    LEFT_THUMB_X:PadCode,
    LEFT_THUMB_Y:PadCode,
    RIGHT_THUMB:PadCode,
    RIGHT_THUMB_X:PadCode,
    RIGHT_THUMB_Y:PadCode,
    START:PadCode,
    BACK:PadCode
};

@:fakeEnum abstract InputDeviceEvent(String) from String to String {
    var keydown = 'keydown';
    var keyup = 'keyup';
    var mousedown = 'mousedown';
    var mouseup = 'mouseup';
    var mousewheel = 'mousewheel';
    var mouseover = 'mouseover';
    var mousemove = 'mousemove';
    var mouseenter = 'mouseenter';
    var mouseleave = 'mouseleave';
    var paddown = 'paddown';
    var padup = 'padup';
    var focus = 'focus';
    var blur = 'blur';
    var mouselocklost = 'mouselocklost';
    var touchstart = 'touchstart';
    var touchend = 'touchend';
    var touchmove = 'touchmove';
    var touchenter = 'touchenter';
    var touchleave = 'touchleave';
    var touchcancel = 'touchcancel';
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

    function update():Void;
    function addEventListener(eventType:InputDeviceEvent, eventListener:Dynamic):Void;
    function removeEventListener(eventType:InputDeviceEvent, eventListener:Dynamic):Void;
    function lockMouse():Bool;
    function isLocked():Bool;
    function hideMouse():Bool;
    function showMouse():Bool;
    function isHidden():Bool;
    function isFocused():Bool;
    function convertToUnicode(keyCodes:Array<KeyCode>):Dynamic;
    function isSupported(feature:Feature):Bool;
}
