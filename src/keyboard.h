#ifndef KEYBOARD_H_  /* Include guard */
#define KEYBOARD_H_

#include <lauxlib.h>
#include <lua.h>
#include <uiohook.h>

int luiohook_unregister(lua_State *L);
int luiohook_register(lua_State *L);
void luiohook_on_event(uiohook_event *const event);
int luiohook_run(lua_State *L);

#endif