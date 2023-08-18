--this file contains all the keys that can be listened to
--more of them are available on the libuiohook
--documentation but i couldn't figure out how to add them
local enums = {
    ["F1"] = 0x0070,
    ["F2"] = 0x0071,
    ["F3"] = 0x0072,
    ["F4"] = 0x0073,
    ["F5"] = 0x0074,
    ["F6"] = 0x0075,
    ["F7"] = 0x0076,
    ["F8"] = 0x0077,
    ["F9"] = 0x0078,
    ["F10"] = 0x0079,
    ["F11"] = 0x007A,
    ["F12"] = 0x007B,
    
    ["F13"] = 0xF000,
    ["F14"] = 0xF001,
    ["F15"] = 0xF002,
    ["F16"] = 0xF003,
    ["F17"] = 0xF004,
    ["F18"] = 0xF005,
    ["F19"] = 0xF006,
    ["F20"] = 0xF007,
    ["F21"] = 0xF008,
    ["F22"] = 0xF009,
    ["F23"] = 0xF00A,
    ["F24"] = 0xF00B,
    
    ["BACK_QUOTE"] = 0x00C0,
    ["BACKQUOTE"] = 0x00C0,
    
    ["0"] = 0x0030,
    ["1"] = 0x0031,
    ["2"] = 0x0032,
    ["3"] = 0x0033,
    ["4"] = 0x0034,
    ["5"] = 0x0035,
    ["6"] = 0x0036,
    ["7"] = 0x0037,
    ["8"] = 0x0038,
    ["9"] = 0x0039,
    
    ["PLUS"] = 0x0209,
    ["MINUS"] = 0x002D,
    ["EQUALS"] = 0x003D,
    ["ASTERISK"] = 0x0097,
    
    ["AT"] = 0x0200,
    ["AMPERSAND"] = 0x0096,
    ["DOLLAR"] = 0x0203,
    ["EXCLAMATION_MARK"] = 0x0205,
    ["EXCLAMATION_DOWN"] = 0x0206,
    
    ["BACKSPACE"] = 0x0008,
    
    ["TAB"] = 0x0009,
    ["CAPS_LOCK"] = 0x0014,
    
    ["A"] = 0x0041,
    ["B"] = 0x0042,
    ["C"] = 0x0043,
    ["D"] = 0x0044,
    ["E"] = 0x0045,
    ["F"] = 0x0046,
    ["G"] = 0x0047,
    ["H"] = 0x0048,
    ["I"] = 0x0049,
    ["J"] = 0x004A,
    ["K"] = 0x004B,
    ["L"] = 0x004C,
    ["M"] = 0x004D,
    ["N"] = 0x004E,
    ["O"] = 0x004F,
    ["P"] = 0x0050,
    ["Q"] = 0x0051,
    ["R"] = 0x0052,
    ["S"] = 0x0053,
    ["T"] = 0x0054,
    ["U"] = 0x0055,
    ["V"] = 0x0056,
    ["W"] = 0x0057,
    ["X"] = 0x0058,
    ["Y"] = 0x0059,
    ["Z"] = 0x005A,
    
    ["OPEN_BRACKET"] = 0x005B,
    ["CLOSE_BRACKET"] = 0x005C,
    ["BACK_SLASH"] = 0x005D,
    
    ["COLON"] = 0x0201,
    ["SEMICOLON"] = 0x003B,
    ["QUOTE"] = 0x00DE,
    ["QUOTEDBL"] = 0x0098,
    ["ENTER"] = 0x000A,
    
    ["LESS"] = 0x0099,
    ["GREATER"] = 0x00A0,
    ["COMMA"] = 0x002C,
    ["PERIOD"] = 0x002E,
    ["SLASH"] = 0x002F,
    ["NUMBER_SIGN"] = 0x0208,
    
    ["OPEN_BRACE"] = 0x00A1,
    ["CLOSE_BRACE"] = 0x00A2,
    
    ["OPEN_PARENTHESIS"] = 0x0207,
    ["CLOSE_PARENTHESIS"] = 0x020A,
    
    ["SPACE"] = 0x0020,
}



return enums
