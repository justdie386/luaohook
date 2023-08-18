--this file contains all the keys that can be listened to
--more of them are available on the libuiohook
--documentation but i couldn't figure out how to add them
local enums = {
    ["F1"] = 0x003B,
    ["F2"] = 0x003C,
    ["F3"] = 0x003D,
    ["F4"] = 0x003E,
    ["F5"] = 0x003F,
    ["F6"] = 0x0040,
    ["F7"] = 0x0041,
    ["F8"] = 0x0042,
    ["F9"] = 0x0043,
    ["F10"] = 0x0044,
    ["F11"] = 0x0057,
    ["F12"] = 0x0058,
    ["F13"] = 0x005B,
    ["F14"] = 0x005C,
    ["F15"] = 0x005D,
    ["F16"] = 0x0063,
    ["F17"] = 0x0064,
    ["F18"] = 0x0065,
    ["F19"] = 0x0066,
    ["F20"] = 0x0067,
    ["F21"] = 0x0068,
    ["F22"] = 0x0069,
    ["F23"] = 0x006A,
    ["F24"] = 0x006B,
    ["BACKQUOTE"] = 0x0029,
    ["1"] = 0x0002,
    ["2"] = 0x0003,
    ["3"] = 0x0004,
    ["4"] = 0x0005,
    ["5"] = 0x0006,
    ["6"] = 0x0007,
    ["7"] = 0x0008,
    ["8"] = 0x0009,
    ["9"] = 0x000A,
    ["0"] = 0x000B,
    ["MINUS"] = 0x000C,
    ["EQUALS"] = 0x000D,
    ["BACKSPACE"] = 0x000E,
    ["TAB"] = 0x000F,
    ["CAPS_LOCK"] = 0x003A,
    ["A"] = 0x001E,
    ["B"] = 0x0030,
    ["C"] = 0x002E,
    ["D"] = 0x0020,
    ["E"] = 0x0012,
    ["F"] = 0x0021,
    ["G"] = 0x0022,
    ["H"] = 0x0023,
    ["I"] = 0x0017,
    ["J"] = 0x0024,
    ["K"] = 0x0025,
    ["L"] = 0x0026,
    ["M"] = 0x0032,
    ["N"] = 0x0031,
    ["O"] = 0x0018,
    ["P"] = 0x0019,
    ["Q"] = 0x0010,
    ["R"] = 0x0013,
    ["S"] = 0x001F,
    ["T"] = 0x0014,
    ["U"] = 0x0016,
    ["V"] = 0x002F,
    ["W"] = 0x0011,
    ["X"] = 0x002D,
    ["Y"] = 0x0015,
    ["Z"] = 0x002C,
    ["ALT_R"] = 0x0E38,
    ["META_L"] = 0x0E5B,
    ["META_R"] = 0x0E5C,
    ["CONTEXT_MENU"] = 0x0E5D,
    ["POWER"] = 0xE05E,
    ["SLEEP"] = 0xE05F,
    ["WAKE"] = 0xE063,
    ["UNDEFINED"] = 0x0000,
    ["CHAR_UNDEFINED"] = 0xFFFF,
}

return enums