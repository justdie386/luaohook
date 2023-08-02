#ifndef MOUSE_H_
#define MOUSE_H_

#ifdef _WIN32
#include <windows.h>
#define sleep(x) Sleep(1000 * (x))
#else
#include <unistd.h>
#endif

#include <lauxlib.h>
#include <lua.h>
#include <uiohook.h>
#include <stdlib.h>

int press_once(lua_State *L);
int press_once_hold(lua_State *L);
int get_sensitivity(lua_State *L);
int get_keyboard_repeat_rate(lua_State *L);
int get_keyboard_repeat_delay(lua_State *L);
int get_acceleration_multiplier(lua_State *L);
int get_acceleration_threshold(lua_State *L);
int get_monitor_height(lua_State *L);
int get_monitor_width(lua_State *L);
int luaopen_luaohook_mouse(lua_State *L);

#endif /* LUAOHOOK_MOUSE_H */
