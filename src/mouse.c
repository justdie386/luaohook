#ifdef _WIN32
#include "lua-5.1.5/src/lua.h"
#include "lua-5.1.5/src/lauxlib.h"
#else
#include <lua5.1/lua.h>
#include <lua5.1/lauxlib.h>
#endif
#include <stdlib.h>
#include "libuiohook/include/uiohook.h"

static uiohook_event *event = NULL;
int press_once(lua_State *L){
	event = (uiohook_event *)malloc(sizeof(uiohook_event));
	event->data.mouse.button = lua_tonumber(L, 1);
	event->type = EVENT_MOUSE_PRESSED;
	event->data.mouse.x = lua_tonumber(L, 2);
	event->data.mouse.y = lua_tonumber(L, 3);
	hook_post_event(event);
	event->type = EVENT_MOUSE_RELEASED;
	hook_post_event(event);
	free(event);
return 0;
}
static int get_monitor_height(lua_State *L) {
    unsigned char count;
    screen_data* monitors = hook_create_screen_info(&count);
    lua_newtable(L);
    for (int i = 0; i < count; i++) {
	lua_pushinteger(L, monitors[i].height);
    }
    return 1;
}
static int get_monitor_width(lua_State *L){
	unsigned char count;
	screen_data* monitors = hook_create_screen_info(&count);
	for (int i=0; i < count; i++){
	lua_pushinteger(L, monitors[i].width);
	}
	return 1;
}

static const struct luaL_Reg luiohook_funcs[] = {
    {"press_once", press_once},
    {"get_width", get_monitor_width},
    {"get_height", get_monitor_height},
    {NULL, NULL}};

int luaopen_mouse(lua_State *L) {
  lua_pushstring(L, "uiohook_key_pressed");
  lua_newtable(L);
  lua_settable(L, LUA_REGISTRYINDEX);
  luaL_register(L, "uiohook", luiohook_funcs);
  return 1;
}
