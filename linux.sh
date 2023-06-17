 git clone https://github.com/kwhat/libuiohook
 cd libuiohook
 mkdir build && cd build
 cmake -S .. -D BUILD_SHARED_LIBS=ON -D BUILD_DEMO=ON -DCMAKE_INSTALL_PREFIX=../dist
 cmake --build . --parallel 2 --target install
 cd ..; cd ..
 cp libuiohook/build/libuiohook.so .
 gcc -fPIC -Wall -shared -llua5.1 ./libuiohook.so press.c -o press.so
 gcc -fPIC -Wall -shared -llua5.1 ./libuiohook.so keyboard.c -o keyboard.so
echo Done!
