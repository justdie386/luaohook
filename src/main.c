#include "keyboard.h"
#include "mouse.h"
#include "press.h"
#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>

static const struct luaL_Reg luiohook_funcs1[] = {
    {"run", luiohook_run},
    {"register", luiohook_register},
    {"unregister", luiohook_unregister},
    {NULL, NULL}};

int luaopen_luaohook_keyboard(lua_State *L) {
  lua_pushstring(L, "uiohook_key_pressed");
  lua_newtable(L);
  lua_settable(L, LUA_REGISTRYINDEX);
  luaL_newlib(L, luiohook_funcs1);
  return 1;
}
 static const struct luaL_Reg luiohook_funcs2[] = {
    {"press_once", press_once},
    {"get_width", get_monitor_width},
    {"get_height", get_monitor_height},
    {"get_mouse_acceleration_multiplier", get_acceleration_multiplier},
    {"get_mouse_acceleration_threshold", get_acceleration_threshold},
    {"get_keyboard_repeat_delay", get_keyboard_repeat_delay},
    {"get_mouse_sensitivity", get_sensitivity},
    {"get_keyboard_repeat_rate", get_keyboard_repeat_rate},
    {NULL, NULL}};

    int luaopen_luaohook_mouse(lua_State *L) {
    luaL_newlib(L, luiohook_funcs2);
    return 1;
}

static const struct luaL_Reg luiohook_funcs3[] = {
    {"kbhold", kbhold},
    {"kbreleaseforeverkey", kbreleaseforeverkey},
    {"kbholdforever", kbholdforever},
    {"kbpress", kbpress},
    {NULL, NULL}};

    int luaopen_luaohook_press(lua_State *L) {
    luaL_newlib(L, luiohook_funcs3);
    return 1;
}
int luaopen_luaohook(lua_State *L)
{
    lua_newtable(L);
    luaopen_luaohook_mouse(L);
    lua_setfield(L, -2, "mouse");
    luaopen_luaohook_keyboard(L);
    lua_setfield(L, -2, "keyboard");
    luaopen_luaohook_press(L);
    lua_setfield(L, -2, "press");

    return 1;
}