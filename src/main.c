#include "event.h"
#include "mouse.h"
#include "keyboard.h"
#include <lauxlib.h>
#include <lua.h>
#include <lualib.h>

static const struct luaL_Reg luiohook_funcs1[] = {
    {"run", luiohook_run},
    {"register", luiohook_register},
    {"unregister", luiohook_unregister},
    {NULL, NULL}
};

static const struct luaL_Reg luiohook_funcs2[] = {
    {"press_once", press_once},
    {"get_width", get_monitor_width},
    {"get_height", get_monitor_height},
    {"get_mouse_acceleration_multiplier", get_acceleration_multiplier},
    {"get_mouse_acceleration_threshold", get_acceleration_threshold},
    {"get_keyboard_repeat_delay", get_keyboard_repeat_delay},
    {"get_mouse_sensitivity", get_sensitivity},
    {"get_keyboard_repeat_rate", get_keyboard_repeat_rate},
    {NULL, NULL}
};

static const struct luaL_Reg luiohook_funcs3[] = {
    {"kbhold", kbhold},
    {"kbreleaseforeverkey", kbreleaseforeverkey},
    {"kbholdforever", kbholdforever},
    {"kbpress", kbpress},
    {NULL, NULL}
};


int luaopen_luaohook_event(lua_State *L) {
    luaL_newmetatable(L, "luaohook.event");
    lua_pushvalue(L, -1);
    lua_setfield(L, -1, "__index");
    luaL_setfuncs(L, luiohook_funcs1, 0);
    return 1;
}


int luaopen_luaohook_mouse(lua_State *L) {
    luaL_newmetatable(L, "luaohook.mouse");
    lua_pushvalue(L, -1);
    lua_setfield(L, -1, "__index");
    luaL_setfuncs(L, luiohook_funcs2, 0);
    return 1;
}



int luaopen_luaohook_press(lua_State *L) {
    luaL_newmetatable(L, "luaohook.press");
    lua_pushvalue(L, -1);
    lua_setfield(L, -1, "__index");
    luaL_setfuncs(L, luiohook_funcs3, 0);
    return 1;
}

int credit (lua_State *L){
    printf("Written by justdie, thanks to nameless (his actual name) for doing the event.c file, and thanks to frityet for the overall help and for the xmake file \n");
    return 0;
}
static const luaL_Reg actor_methods[] = {
    {"credit", credit},
    { NULL, NULL }
};
int 
luaopen_luaohook (lua_State * L)
{
    /* create metatable */
    luaL_newmetatable(L, "luaohook");

    /* metatable.__index = metatable */
    lua_pushvalue(L, -1);
    lua_setfield(L, -1, "__index");

    /* register methods */
    luaL_setfuncs(L, actor_methods, 0);

    return 1;
}