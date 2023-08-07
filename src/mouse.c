#ifdef _WIN32
#include <windows.h>
#include <winuser.h>

#define sleep(x) Sleep(1000 * (x))
#else
#include <unistd.h>
#endif
#include <lauxlib.h>
#include <lua.h>
#include <uiohook.h>
#include "mouse/win32.h"

static uiohook_event *event = NULL;

int press(lua_State *L) {
  event = (uiohook_event *)malloc(sizeof(uiohook_event));
  event->type = EVENT_MOUSE_PRESSED;
  event->data.mouse.button = lua_tonumber(L, 1);
  POINT p = findcoordinates();
  event->data.mouse.x = p.x/2;
  event->data.mouse.y = p.y;
  hook_post_event(event);
  event->type = EVENT_MOUSE_RELEASED;
  POINT p2 = findcoordinates();
  event->data.mouse.x = p2.x/2;
  event->data.mouse.y = p2.y;
  hook_post_event(event);
  free(event);
  return 0;
}
int pressCoordinates(lua_State *L) {
  event = (uiohook_event *)malloc(sizeof(uiohook_event));
  event->data.mouse.button = lua_tonumber(L, 1);
  event->type = EVENT_MOUSE_PRESSED;
  event->data.mouse.x = lua_tonumber(L, 2);
  event->data.mouse.y = lua_tonumber(L, 3);
  hook_post_event(event);
  free(event);
  return 0;
}

int pressHold(lua_State *L) {
  event = (uiohook_event *)malloc(sizeof(uiohook_event));
  event->data.mouse.button = lua_tonumber(L, 1);
  event->type = EVENT_MOUSE_PRESSED;
  event->data.mouse.x = lua_tonumber(L, 2);
  event->data.mouse.y = lua_tonumber(L, 3);
  hook_post_event(event);
  free(event);
  return 0;
}

int releaseHold(lua_State *L) {
  event = (uiohook_event *)malloc(sizeof(uiohook_event));
  event->type = EVENT_MOUSE_RELEASED;
  event->data.mouse.button = lua_tonumber(L, 1);
  hook_post_event(event);
  free(event);
  return 0;
}
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
static const struct luaL_Reg luiohook_funcs2[] = {
    {"press", press},
    {"pressCoordinates", pressCoordinates},
    {"pressHold", pressHold},
    {"releaseHold", releaseHold},
    {"get_width", get_monitor_width},
    {"get_height", get_monitor_height},
    {"get_mouse_acceleration_multiplier", get_acceleration_multiplier},
    {"get_mouse_acceleration_threshold", get_acceleration_threshold},
    {"get_keyboard_repeat_delay", get_keyboard_repeat_delay},
    {"get_mouse_sensitivity", get_sensitivity},
    {"get_keyboard_repeat_rate", get_keyboard_repeat_rate},
    {NULL, NULL}};

int luaopen_luaohook_mouse(lua_State *L) {
  luaL_register(L, "mouse", luiohook_funcs2);
  return 1;
}