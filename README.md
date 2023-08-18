# luaohook

Thanks to kwat for making https://github.com/kwhat/libuiohook (Credit i guess)

luaohook is a fully cross platform global keyboard and mouse hooks for lua, built around libuiohook, a C cross platform keyboard and mouse global hook library.

IMPORTANT: the scroll function seems to be having issues with luajit, and may or may not only work one in twenty tries, so switch to the regular lua interpreter if you plan on using this.

**INSTALLATION**

I am using a not very well known build system called xmake, it works with luarocks.On unix systems using sudo will give you a weird red xmake error, PLEASE just use the --local flag or change the permissions of the install folder for luarocks, there sadly seems to be no way around it. Luckely for windows users, there is no such issues!

```
luarocks install luaohook
```
**USAGE**

```lua

local mouse = require "luaohook.mouse"
local event = require "luaohook.event"
local keys = require "luaohook.keyboardkeys"
local mouse = require "luaohook.mousekeys"
event.register(keys["A"], function()
    mouse.press(mouse["MOUSE_BUTTON1"])
end)

event.run()

```

Now to be fair, this might be a lot of require, but this is to ensure you only have what you need, such tools need to be fast, so might aswell make it as lightweight as possible




**TROUBLESHOOTING**

Now before you start saying "this sucks, it doesn't even install", please try to fix the problem, read the errors, i don't know, try something.

**MAPPING**

here are the keys for the keyboard and event module, this is everything you can press and/or listen to
```lua
local keys = {
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

```

i only added the keys i thought would be usefull, but it can pretty much map everything on the keyboard, if there is anything missing you wish to add, make a pull request, here are all the keys: https://github.com/kwhat/libuiohook/blob/1.3/include/uiohook.h#L137-L471

this is all the buttons that you can interact with using the mouse module
```lua
 mouse.buttons = {
    ["MOUSE_BUTTON1"] = 1,
    ["MOUSE_BUTTON2"] = 2,
    ["MOUSE_BUTTON3"] = 3,
    ["MOUSE_BUTTON4"] = 4,
    ["MOUSE_BUTTON5"] = 5,
}
mouse.wheel = {
    ["WHEEL_UNIT_SCROLL"] = 1,
    ["WHEEL_BLOCK_SCROLL"] = 2
}
```
those are all the things you can make the mouse do
```lua
local events = {
    ["EVENT_KEY_TYPED"] = 3,
    ["EVENT_KEY_PRESSED"] = 4,
    ["EVENT_KEY_RELEASED"] = 5,
    ["EVENT_MOUSE_CLICKED"] = 6,
    ["EVENT_MOUSE_PRESSED"] = 7,
    ["EVENT_MOUSE_RELEASED"] = 8,
    ["EVENT_MOUSE_MOVED"] = 9,
    ["EVENT_MOUSE_DRAGGED"] = 10,
    ["EVENT_MOUSE_WHEEL"] = 11
}
```
**HOW TO USE**

to use the mapping above, you need to do this:
```lua
local keyboardkeys = require"luaohook.keyboardkeys"
local event = require"luaohook.event"
event.register(keyboardkeys["A"], function()
print("A was pressed, congrats!")
end)
event.run()
```
as simple as that, here are the names for each modules that provides such mappings
```lua
local mouseButtons = require"luaohook.mousebuttons"
local keyboardkeys = require"luaohook.keyboardkeys"
local mouseEvents = require"luaohook.eventtype"
```

**THATS IT**
i hope this readme helped you, and well uh if you have any problems, hit me up on discord: justdiee's my username, and/or make a github issue.