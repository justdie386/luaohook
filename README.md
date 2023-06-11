# luaohook

This library is cross platform, but i don't have instructions on how to build this on windows.
If the steps below won't work, then you are on your own

I highly recommend you instead try out mingw if you are indeed on windows.

Step 1
Build and install libuiohook for your platform (For archlinux users, use the AUR version named libuiohook)

```
 git clone https://github.com/kwhat/libuiohook
 cd uiohook
 mkdir build && cd build
 cmake -S .. -D BUILD_SHARED_LIBS=ON -D BUILD_DEMO=ON -DCMAKE_INSTALL_PREFIX=../dist
 cmake --build . --parallel 2 --target install  
```

Step 2
Build the .so file for the keyboard press

```
gcc -fPIC -Wall -shared -llua5.1 -luiohook press.c -o press.so
```

Step 3
Build the .so file for the keyboard listener

```
gcc -fPIC -Wall -shared -llua5.1 -luiohook keyboard.c -o keyboard.so
```

Annnnd you are now done, if you didn't get any errors, you should have two .so files in your current folder
