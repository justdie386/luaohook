#include <uiohook.h>
#include <lua.h>
#include <lauxlib.h>
#include "info.h"

int get_sensitivity(lua_State *L) {
  lua_pushinteger(L, hook_get_pointer_sensitivity());
  return 1;
}
int get_keyboard_repeat_rate(lua_State *L) {
  lua_pushinteger(L, hook_get_auto_repeat_rate());
  return 1;
}
int get_keyboard_repeat_delay(lua_State *L) {
  lua_pushinteger(L, hook_get_auto_repeat_delay());
  return 1;
}
int get_acceleration_multiplier(lua_State *L) {
  lua_pushinteger(L, hook_get_pointer_acceleration_multiplier());
  return 1;
}
int get_acceleration_threshold(lua_State *L) {
  lua_pushinteger(L, hook_get_pointer_acceleration_threshold());
  return 1;
}
int get_monitor_height(lua_State *L) {
  unsigned char count;
  screen_data *monitors = hook_create_screen_info(&count);
  lua_newtable(L);
  lua_pushinteger(L, monitors->height);
  return 1;
}
int get_monitor_width(lua_State *L) {
  unsigned char count;
  screen_data *monitors = hook_create_screen_info(&count);
  lua_newtable(L);
  lua_pushinteger(L, monitors->width);
  return 1;
}