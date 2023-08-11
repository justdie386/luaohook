#include <uiohook.h>
#include <stdlib.h>
#include <lua.h>
#include <lauxlib.h>

static uiohook_event *event = NULL;

int move(lua_State *L){
    luaL_argcheck(L, lua_isnumber(L, 1), 1, "expected number");
    luaL_argcheck(L, lua_isnumber(L, 2), 2, "expected number");
    event = (uiohook_event *)malloc(sizeof(uiohook_event));
    event->type = EVENT_MOUSE_DRAGGED;
    event->data.mouse.button = MOUSE_NOBUTTON;
    event->data.mouse.x = lua_tonumber(L, 1);
    event->data.mouse.y = lua_tonumber(L, 2);
    event->mask = 0x00;
    hook_post_event(event);
    free(event);
    return 0;
}