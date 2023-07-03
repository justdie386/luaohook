# luaohook

Thanks to kwat for making https://github.com/kwhat/libuiohook (Credit i guess)

Luaohook is a fully cross platform global keyboard and mouse(just implemented that one! )hooks for lua, built around libuiohook, a C cross platform keyboard and mouse global hook library.

**INSTALLATION**

Install scripts if you'd rather this over the manual install, if it fails then i recommend doing the manual to see where and why 

if you already have the lua headers and dependencies for your platform then skip the steps that is going to download lua file, just use the steps to build libuiohook and gcc to get the .so/.dylib/.dll 

linux
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/justdie386/luaohook/main/linux.sh)"
```
macos
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/justdie386/luaohook/main/macos.sh)"
```
For windows, i recommend you use the linux script with mingw, and install the lua dependencies from the mingw pacman repositories to make the whole thing simpler


PowerShell -NoProfile -ExecutionPolicy unrestricted -Command "[Net.ServicePointManager]::SecurityProtocol = 'Tls12'; iex ((new-object net.webclient).DownloadString('https://raw.github.com/justdie386/luaohook/main/windows.ps1'))"```
the script just runs all those commands, instead of copying them manually.

The installation for windows might not work correctly, as CL is pretty weird. The steps might not work with a simpel copy past, so please just read the error and try to fix it before giving up. On linux, you might need to install more than the lua5.1 package, example ubuntu has lua and the liblua-dev package, which will need to be installed too, so watch out if you already have lua installed get missing files errors.

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
Copy the lib/uiohook.so/.dylib file file

```
cp libuiohook/build/libuiohook.so .
sudo cp libuiohook/build/libuiohook.so.1 /usr/lib
```
For macos
```
cp libuiohook/build/libuiohook.dylib .
sudo cp libuiohook/build/libuiohook.1.dylib /usr/local/lib/
```
Why do you gottac copy it to /usr/local/lib? no clue but it won't work otherwise, if you get an error about it on linux try this fix
Step 5
Build the .so/.dylib file for the keyboard press
```
gcc -fPIC -Wall -shared  keyboard.c -o keyboard.so -llua5.1 -L. -luiohook
```
For macos

```
gcc -fPIC -Wall -shared  keyboard.c -o keyboard.dylib -llua5.1 -L. -luiohook
```

Step 6
Build the .so/.dylib file for the keyboard listener
if on macos change the .so to .dylib on the command below
```
gcc -fPIC -Wall -shared  mouse.c -o mouse.so -llua5.1 -L. -luiohook

```
For maccos
```
gcc -fPIC -Wall -shared  mouse.c -o mouse.dylib -llua5.1 -L. -luiohook

```
Step 7
Build the .so/.dylib for the mouse handler
if on macos change the .so to .dylib
For linux
```
gcc -fPIC -Wall -shared mouse.c -o mouse.so -llua5.1 -L. -luiohook
```
For macos
```
gcc -fPIC -Wall -shared mouse.c -o mouse.dylib -llua5.1 -L. -luiohook
```
There ya go, if you didn't get any errors, you should be good to go with it.
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

If you get errors about missing files, or incorrect name, but i don't specificacly mention them, pleacse just try to fix it yourself, its not because i said those instructions were right that there won't be any mistakes here and there.

**PERMANENT INSTALL**
if you want to get rid of the libuiohook folder, please copy the uiohook.h file from libuiohook/include/libuiohook to /usr/include on linux and /usr/local/include on macos, good luck on windows, i have no clue i and i don't wanna deal with it, but if you get it working, please let me know.
