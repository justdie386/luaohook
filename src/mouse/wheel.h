#ifndef WHEEL_H_
#define WHEEL_H_

#ifdef _WIN32
#include <windows.h>
#include <winuser.h>
#include "win32/win32.h"
#define coords POINT
#define sleep(x) Sleep(1000 * (x))
#elif __APPLE__
#include <unistd.h>
#include "apple/osx.h"
#define coords CGPoint
#elif __linux__ 
#include <unistd.h>
#include "x11/x11.h"
#define coords MouseCoordinates
#endif

#include "uiohook.h"
#include <lauxlib.h>
#include <lua.h>

int scroll(lua_State *L);

#endif /* WHEEL_H_ */
