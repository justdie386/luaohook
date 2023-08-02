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
int press_once_hold(lua_State *L){
	event = (uiohook_event *)malloc(sizeof(uiohook_event));
	event->data.mouse.button = lua_tonumber(L, 1);
	event->type = EVENT_MOUSE_PRESSED;
	event->data.mouse.x = lua_tonumber(L, 2);
	event->data.mouse.y = lua_tonumber(L, 3);
	hook_post_event(event);
	sleep(lua_tonumber(L, 4));
	event->type = EVENT_MOUSE_RELEASED;
	hook_post_event(event);
	free(event);
	return 0;
}
static int get_sensitivity(lua_State *L){
	lua_pushinteger(L, hook_get_pointer_sensitivity());
	return 1;
}
static int get_keyboard_repeat_rate(lua_State *L){
	lua_pushinteger(L, hook_get_auto_repeat_rate());
	return 1;
}
static int get_keyboard_repeat_delay(lua_State *L){
	lua_pushinteger(L, hook_get_auto_repeat_delay());
	return 1;
}
static int get_acceleration_multiplier(lua_State *L){
	lua_pushinteger(L, hook_get_pointer_acceleration_multiplier());
	return 1;
}
static int get_acceleration_threshold(lua_State *L){
	lua_pushinteger(L, hook_get_pointer_acceleration_threshold());
	return 1;
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
