#ifndef PRESS_H_
#define PRESS_H_

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

int press(lua_State *L);
int pressCoordinates(lua_State *L);
int pressHold(lua_State *L);
int releaseHold(lua_State *L);
int get_sensitivity(lua_State *L);
int get_keyboard_repeat_rate(lua_State *L);
int get_keyboard_repeat_delay(lua_State *L);
int get_acceleration_multiplier(lua_State *L);
int get_acceleration_threshold(lua_State *L);
int get_monitor_height(lua_State *L);
int get_monitor_width(lua_State *L);

#endif /* PRESS_H_ */
