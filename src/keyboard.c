#ifdef _WIN32
#include <windows.h>
#else
#include <unistd.h>
#endif
#include <lauxlib.h>
#include <lua.h>
#include <stdlib.h>
#include <uiohook.h>
// Damn
static uiohook_event *event = NULL;
int kbpress(lua_State *L) {
  luaL_argcheck(L, lua_isnumber(L, 1), 1, "expected number");
  event = (uiohook_event *)malloc(sizeof(uiohook_event));
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
  luaL_argcheck(L, lua_isnumber(L, 1), 1, "expected number");
  event = (uiohook_event *)malloc(sizeof(uiohook_event));
  event->type = EVENT_KEY_PRESSED;
  event->data.keyboard.keycode = lua_tonumber(L, 1);
  hook_post_event(event);
  free(event);
  return 0;
}
int kbrelease(lua_State *L) {
  luaL_argcheck(L, lua_isnumber(L, 1), 1, "expected number");
  event = (uiohook_event *)malloc(sizeof(uiohook_event));
  event->type = EVENT_KEY_RELEASED;
  event->data.keyboard.keycode = lua_tonumber(L, 1);
  hook_post_event(event);
  free(event);
  return 0;
}

static const struct luaL_Reg luiohook_funcs3[] = {
    {"hold", kbhold},
    {"release", kbrelease},
    {"press", kbpress},
    {NULL, NULL}
};

 int luaopen_luaohook_keyboard(lua_State *L) {
    	luaL_register(L, "keyboard", luiohook_funcs3);
    return 1;
}
