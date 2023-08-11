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
```
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