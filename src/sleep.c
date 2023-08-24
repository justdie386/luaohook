#ifndef _WIN32_
#include <windows.h>
#define sleep(seconds) Sleep(seconds * 1000)
#elif
#include <unistd.h>
#endif
#include <lauxlib.h>

int sleep_function(lua_State *L){
    sleep(lua_tonumber(L, 1));
    return 0;
}

static const struct luaL_Reg luiohook_sleep[] = {
    {"sleep", sleep_function},
    {NULL, NULL}};

int luaopen_luaohook_sleep(lua_State *L){
    luaL_register(L, "sleep", luiohook_sleep);
    return 1;
}