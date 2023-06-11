# luaohook

Thanks to kwat for making https://github.com/kwhat/libuiohook (Credit i guess)

This library is cross platform, but i don't have instructions on how to build this on windows.
If the steps below won't work, then you are on your own

THE BUILD INSTRUCTIONS WON"T WORK OUTSIDE OF LINUX MAYBE ON MAC TOO

Step 1
Build and install libuiohook for your platform (For archlinux users, use the AUR version named libuiohook)

```
 git clone https://github.com/kwhat/libuiohook
 cd libuiohook
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

**USAGE**

```lua

package.cpath = "./?.so"

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

