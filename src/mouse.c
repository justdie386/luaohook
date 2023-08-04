#ifdef _WIN32
#include <windows.h>
#define sleep(x) Sleep(1000 * (x))
#else
#include <unistd.h>
#endif
#include <lauxlib.h>
#include <lua.h>
#include <uiohook.h>
#include <stdio.h>
static uiohook_event *event = NULL;

int press_once(lua_State *L) {
    printf("wtf? \n");
    event = (uiohook_event *)malloc(sizeof(uiohook_event));
    event->data.mouse.button = lua_tonumber(L, 1);
    event->type = EVENT_MOUSE_PRESSED;
    event->data.mouse.x = lua_tonumber(L, 2);
    event->data.mouse.y = lua_tonumber(L, 3);
    hook_post_event(event);
    free(event);
    return 0;
}

int press_once_hold(lua_State *L) {
    printf("ayo? \n");
    event = (uiohook_event *)malloc(sizeof(uiohook_event));
    event->data.mouse.button = lua_tonumber(L, 1);
    event->type = EVENT_MOUSE_PRESSED;
    event->data.mouse.x = lua_tonumber(L, 2);
    event->data.mouse.y = lua_tonumber(L, 3);
    hook_post_event(event);
    free(event);
    return 0;
}

int release_mouse(lua_State *L) {
    event = (uiohook_event *)malloc(sizeof(uiohook_event));
    event->type = EVENT_MOUSE_RELEASED;
	event->data.mouse.button = lua_tonumber(L, 1);
    hook_post_event(event);
    free(event);
    return 0;
}
int get_sensitivity(lua_State *L){
	lua_pushinteger(L, hook_get_pointer_sensitivity());
	return 1;
}
int get_keyboard_repeat_rate(lua_State *L){
	lua_pushinteger(L, hook_get_auto_repeat_rate());
	return 1;
}
int get_keyboard_repeat_delay(lua_State *L){
	lua_pushinteger(L, hook_get_auto_repeat_delay());
	return 1;
}
int get_acceleration_multiplier(lua_State *L){
	lua_pushinteger(L, hook_get_pointer_acceleration_multiplier());
	return 1;
}
int get_acceleration_threshold(lua_State *L){
	lua_pushinteger(L, hook_get_pointer_acceleration_threshold());
	return 1;
}
int get_monitor_height(lua_State *L) {
    unsigned char count;
    screen_data* monitors = hook_create_screen_info(&count);
    lua_newtable(L);
	lua_pushinteger(L, monitors->height);
    return 1;
}
int get_monitor_width(lua_State *L){
	unsigned char count;
	screen_data* monitors = hook_create_screen_info(&count);
	lua_newtable(L);
	lua_pushinteger(L, monitors->width);
	return 1;
}
static const struct luaL_Reg luiohook_funcs2[] = {
    {"press_once", press_once},
	{"press_once_hold", press_once_hold},
	{"release_mouse", release_mouse},
    {"get_width", get_monitor_width},
    {"get_height", get_monitor_height},
    {"get_mouse_acceleration_multiplier", get_acceleration_multiplier},
    {"get_mouse_acceleration_threshold", get_acceleration_threshold},
    {"get_keyboard_repeat_delay", get_keyboard_repeat_delay},
    {"get_mouse_sensitivity", get_sensitivity},
    {"get_keyboard_repeat_rate", get_keyboard_repeat_rate},
    {NULL, NULL}
};


int luaopen_luaohook_mouse(lua_State *L){
	printf("testing? \n");
	luaL_newlib(L,luiohook_funcs2);
	return 1;
}