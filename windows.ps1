 git clone https://github.com/kwhat/libuiohook
 cd libuiohook
 mkdir build && cd build
 cmake -S .. -D BUILD_SHARED_LIBS=ON -D BUILD_DEMO=ON -DCMAKE_INSTALL_PREFIX=../dist
 cmake --build . --parallel 2 --target install  
 echo Downloading lua source code
 cd .. && cd ..
wget www.lua.org/ftp/lua-5.1.5.tar.gz
tar -xf lua-5.1.5.tar.gz
setx PATH "%CD%;%PATH%"
copy "libuiohook\dist\lib\uiohook.lib" . /y
compiling lua
wget https://raw.githubusercontent.com/Pharap/CompilingLua/master/Compile.bat -P lua-5.1.5
cd lua-5.1.5 && .\Compile.bat && cd ..
gcc keyboard.c -fPIC -Wall -shared -o keyboard.dll ./lua-5.1.5/src/lua.lib ./uiohook.lib
echo I highly recommend you use the lua.exe file built by this script as it will not have any architecture issues with the modules
copy "lua5.1.5/src/lua.exe" . /y
