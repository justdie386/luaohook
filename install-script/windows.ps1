 git clone https://github.com/kwhat/libuiohook
 cd libuiohook
 mkdir build
 cd build
 cmake -S .. -D BUILD_SHARED_LIBS=ON -D BUILD_DEMO=ON -DCMAKE_INSTALL_PREFIX=../dist
 cmake --build . --parallel 2 --target install  
 echo "Downloading lua source code"
 cd ..
 cd ..
wget www.lua.org/ftp/lua-5.1.5.tar.gz
tar -xf lua-5.1.5.tar.gz
setx PATH "%CD%;%PATH%"
copy "libuiohook\dist\lib\uiohook.lib" . /y
compiling lua
wget https://raw.githubusercontent.com/Pharap/CompilingLua/master/Compile.bat -P lua-5.1.5
cd lua-5.1.5 && .\Compile.bat
cd ..
cd src
echo "i have no idea how to use CL, you will need to figure out the equivalent of those gcc arguments: Wall fPIC shared and link it with the libuiohook.dll.1" 
echo "and the lua.lib (for lua5.1), if you do figure it out, please let me know"
