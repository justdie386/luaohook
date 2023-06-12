# luaohook

Thanks to kwat for making https://github.com/kwhat/libuiohook (Credit i guess)

The steps might not be 100% correct, if you see some commands aren't working, because of lets say an incorrect filename, feel free to find the right one yourself
For windows, i recommend using the x86-x64 developer command prompt

**INSTALLATION**

Step 1
Clone this repo
```
git clone https://github.com/justdie386/luaohook
cd luaohook
```
Step 2
Build and install libuiohook for your platform (For archlinux users, use the AUR version named libuiohook)

```
 git clone https://github.com/kwhat/libuiohook
 cd libuiohook
 mkdir build && cd build
 cmake -S .. -D BUILD_SHARED_LIBS=ON -D BUILD_DEMO=ON -DCMAKE_INSTALL_PREFIX=../dist
 cmake --build . --parallel 2 --target install  
```
Step 3
Download the lua .h files
if you aren't on windows, then you can just change the #include in the c files to <lua5.1/*file*.h>
```
cd .. && cd ..
wget www.lua.org/ftp/lua-5.1.5.tar.gz
tar -xf lua-5.1.5.tar.gz
```
THIS PART IS FOR LINUX/MACOS/BSD
Step 4
Copy the uiohook.so file

```
cp libuiohook/build/uiohook.so .
```
Step 5
Build the .so/.dylib file for the keyboard press
if on macos change the .so to .dylib on the command below

```
gcc -fPIC -Wall -shared -llua5.1 ./uiohook.so press.c -o press.so
```

Step 6
Build the .so/.dylib file for the keyboard listener
if on macos change the .so to .dylib on the command below
```
gcc -fPIC -Wall -shared -llua5.1 ./uiohook.so keyboard.c -o keyboard.so
```
THIS PART IS FOR WINDOWS
step 4
copy the uiohook.lib file into the luaohook folder
```
setx PATH "%CD%;%PATH%"
copy "libuiohook\dist\lib\uiohook.lib" . /y
```
Step 5
build lua's needed dependencies
if you get any errors, then download visual studio and the C/C++ components stuff
```
wget https://raw.githubusercontent.com/Pharap/CompilingLua/master/Compile.bat -P lua-5.1.5
cd lua-5.1.5 && .\Compile.bat && cd ..
```

Step 6
build the .dll file for keyboard press

```
gcc keyboard.c -fPIC -Wall -shared -o keyboard.dll ./lua-5.1.5/src/lua.lib ./uiohook.lib
```
Step 7

```
gcc press.o -fPIC -Wall -shared -o press.dll ./lua-5.1.5/src/lua.lib ./uiohook.lib
```
Annnnd you are now done, if you didn't get any errors, you should have two .so/.dylib/.dll (depending on your platform) files in your current folder

**USAGE**

```lua

package.cpath = "./?.so" --or .dll for windows

local press = require"press"
local keyboard = require"keyboard"
keyboard.register(0x001E, function()
print("nice")
press.kbpress(0x002E)
end)

keyboard.run()
```

The keys are mapped here

https://github.com/kwhat/libuiohook/blob/1.2/include/uiohook.h#LL137C1-L285C74


**TROUBLESHOOTING**

if you are having a windows error about a missing dll.
Go to the libuiohook/build folder, and copy the .dll to your current directory
If you get this issue on mac, try the same but by copying the .dylib file

If you are getting weird errors about some uiohook functions stuff. 
make sure the compiler can find the uiohook.h from the libuiohook/include folder
if its just not working, edit the .c file and change this line
`#include <uiohook.h>` to `#include "uiohook.h"` then copy the uiohook.h file
from the libuiohook/include folder to the luaohook directory. Recompile with the
previous commands and it should be fixed.

