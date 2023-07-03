 git clone https://github.com/justdie386/luaohook
 cd luaohook;cd src
 git clone https://github.com/kwhat/libuiohook
 cd libuiohook
 mkdir build && cd build
 cmake -S .. -D BUILD_SHARED_LIBS=ON -D BUILD_DEMO=ON -DCMAKE_INSTALL_PREFIX=../dist
 cmake --build . --parallel 2 --target install
 cd ..; cd ..
 cp libuiohook/build/libuiohook.so .
 sudo cp libuiohook/build/libuiohook.so.1 /usr/lib
 cd src
 gcc -fPIC -Wall -shared  press.c -o press.so -llua5.1 -L. -luiohook
 gcc -fPIC -Wall -shared  keyboard.c -o keyboard.so -llua5.1 -L. -luiohook
 gcc -fPIC -Wall -shared mouse.c -o mouse.so -llua5.1 -L. -luiohook
echo Done!
