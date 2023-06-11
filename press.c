/* this script was made 100% by me so no comments
on the quality please :/
*/

#include <lua5.1/lauxlib.h>
#include <lua5.1/lua.h>
#include <stdlib.h>
#include <uiohook.h>
#ifdef _WIN32
#include <windows.h>
#define sleep(x) Sleep(1000 * (x))
#else
#include <unistd.h>
#endif
static uiohook_event *event = NULL;
int keyPressed;
int kbpress(lua_State *L) {
  event = (uiohook_event *)malloc(sizeof(uiohook_event));
  luaL_argcheck(L, lua_isnumber(L, 1), 1, "expected number");
  event->type = EVENT_KEY_PRESSED;
  event->mask = 0x00;
  event->data.keyboard.keychar = CHAR_UNDEFINED;
  event->data.keyboard.keycode = lua_tonumber(L, 1);
  hook_post_event(event);
  event->type = EVENT_KEY_RELEASED;
  hook_post_event(event);
  free(event);
  return 0;
}
int kbhold(lua_State *L) {
  event = (uiohook_event *)malloc(sizeof(uiohook_event));
  event->type = EVENT_KEY_PRESSED;
  luaL_argcheck(L, lua_isnumber(L, 1), 1, "expected number");
  luaL_argcheck(L, lua_isnumber(L, 2), 2, "expected number");
  event->data.keyboard.keycode = lua_tonumber(L, 1);
  hook_post_event(event);
  sleep(lua_tonumber(L, 2));
  event->type = EVENT_KEY_RELEASED;
  hook_post_event(event);
  free(event);
  return 0;
}
int kbholdforever(lua_State *L) {
  event = (uiohook_event *)malloc(sizeof(uiohook_event));
  luaL_argcheck(L, lua_isnumber(L, 1), 1, "expected string");
  event->data.keyboard.keycode = lua_tonumber(L, 1);
  keyPressed = lua_tonumber(L, 1);
  event->type = EVENT_KEY_PRESSED;
  hook_post_event(event);
  free(event);
  return 0;
}
int kbreleaseforeverkey(lua_State *L) {
  event = (uiohook_event *)malloc(sizeof(uiohook_event));
  event->type = EVENT_KEY_RELEASED;
  event->data.keyboard.keycode = keyPressed;
  hook_post_event(event);
  free(event);
  return 0;
}

static const struct luaL_Reg luiohook_funcs[] = {
    {"kbhold", kbhold},
    {"kbreleaseforeverkey", kbreleaseforeverkey},
    {"kbholdforever", kbholdforever},
    {"kbpress", kbpress},
    {NULL, NULL}};

int luaopen_press(lua_State *L) {
  lua_pushstring(L, "uiohook_key_pressed");
  lua_newtable(L);
  lua_settable(L, LUA_REGISTRYINDEX);

  luaL_register(L, "uiohook", luiohook_funcs);

  return 1;
}