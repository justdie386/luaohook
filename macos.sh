 git clone https://github.com/kwhat/libuiohook
 cd libuiohook
 mkdir build && cd build
 cmake -S .. -D BUILD_SHARED_LIBS=ON -D BUILD_DEMO=ON -DCMAKE_INSTALL_PREFIX=../dist
 cmake --build . --parallel 2 --target install
 cd ..; cd ..
 cp libuiohook/build/libuiohook.dylib .
 cp libuiohook/build/libuiohook.1.dylib /usr/local/lib/
gcc -fPIC -Wall -shared -llua5.1 ./libuiohook.dylib press.c -o press.dylib
gcc -fPIC -Wall -shared -llua5.1 ./libuiohook.dylib keyboard.c -o keyboard.dylib
echo Done!
