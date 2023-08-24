#ifndef INFO_H_
#define INFO_H_
#include <lauxlib.h>
int get_sensitivity(lua_State *L);
int get_keyboard_repeat_rate(lua_State *L);
int get_keyboard_repeat_delay(lua_State *L);
int get_acceleration_multiplier(lua_State *L);
int get_acceleration_threshold(lua_State *L);
int get_monitor_height(lua_State *L);
int get_monitor_width(lua_State *L);

#endif