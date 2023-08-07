#include <windows.h>
#include "win32.h"
#include <stdio.h>
#include <winuser.h>

POINT findcoordinates(){
    POINT p;
    GetCursorPos(&p);
    return p;
}