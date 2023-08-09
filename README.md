# luaohook

Thanks to kwat for making https://github.com/kwhat/libuiohook (Credit i guess)

luaohook is a fully cross platform global keyboard and mouse(just implemented that one! )hooks for lua, built around libuiohook, a C cross platform keyboard and mouse global hook library.

For now i do not recommend using the mouse module because some features could be missing depending on your needs

**INSTALLATION**

The installation is done using xmake, please install it from xmake.io before doing anything

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

NOTE: i haven't implemented the get coordinates on X11 (don't even think about wayland) so the mouse.press() function will only work on windows and macos, you will have to manually enter the coordinates using the functions that are available to you.

I don't plan on writting docs, so you'll have to read the source code, lucky for you, it's simple, so the functions name quite literaly does what the name says it does! hooray!

The keys are mapped here if the ones from luaohook.keyboardkeys and luaohook.mousekeys aren't enough

https://github.com/kwhat/libuiohook/blob/1.2/include/uiohook.h#LL137C1-L285C74


**TROUBLESHOOTING**

if you are having a windows error about a missing dll.
Go to the libuiohook/build folder, and copy the .dll to your current directory
If you get this issue on mac, try the same but by copying the .dylib file

If you are getting weird errors about some uiohook functions stuff. 
make sure the compiler can find the uiohook.h from the libuiohook/include folder

If you get errors about missing files, or incorrect name, but i don't specificacly mention them, pleacse just try to fix it yourself, its not because i said those instructions were right that there won't be any mistakes here and there.

**PERMANENT INSTALL**
if you want to get rid of the libuiohook folder, please copy the uiohook.h file from libuiohook/include/libuiohook to /usr/include on linux and /usr/local/include on macos, good luck on windows, i have no clue i and i don't wanna deal with it, but if you get it working, please let me know.
