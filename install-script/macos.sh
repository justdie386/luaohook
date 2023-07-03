 git clone https://github.com/justdie386/luaohook
 cd luaohook
 src src
 git clone https://github.com/kwhat/libuiohook
 cd libuiohook
 mkdir build && cd build
 cmake -S .. -D BUILD_SHARED_LIBS=ON -D BUILD_DEMO=ON -DCMAKE_INSTALL_PREFIX=../dist
 cmake --build . --parallel 2 --target install
 cd ..; cd ..
 cp libuiohook/build/libuiohook.dylib .
 cp libuiohook/build/libuiohook.1.dylib /usr/local/lib/
gcc -fPIC -Wall -shared  press.c -o press.dylib -llua5.1 -L. -luiohook
gcc -fPIC -Wall -shared  keyboard.c -o keyboard.dylib -llua5.1 -L. -luiohook
gcc -fPIC -Wall -shared mouse.c -o mouse.so -llua5.1 -L. -luiohook
echo Done!
