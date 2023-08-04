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

local keyboard = require"luaohook.keyoard"
local mouse = require"luaohook.mouse"
local event = require"luaohook.event"
local monitor_width = monitor.get_width()
local monitor_height = monitor.get_height()
for i=1,5 do

end
event.register(0x001E, function()
print("nice")
keyboard.kbpress(0x002E)
end)

event.run()
```

The keys are mapped here

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
