#ifndef PRESS_H_
#define PRESS_H_

#ifdef _WIN32
#include <windows.h>
#include <winuser.h>
#include "win32/win32.h"
#define coords POINT
#elif __APPLE__
#include <unistd.h>
#include "osx/osx.h"
#define coords CGPoint
#elif __linux__ 
#include <unistd.h>
#include "x11/x11.h"
#define coords MouseCoordinates
#endif
#include "uiohook.h"
#include <lauxlib.h>
#include <lua.h>

int press(lua_State *L);
int pressCoordinates(lua_State *L);
int hold(lua_State *L);
int release(lua_State *L);


#endif /* PRESS_H_ */
