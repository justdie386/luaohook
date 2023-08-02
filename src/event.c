/*
 *    Luaohook is a library built around libuiohook to provide global keyboard
 *    hooks for lua made by Justin Bouchard.  All Rights Reserved.
 *    https://github.com/justdie386/luaohook
 *
 *    This program is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    This program is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 */
 //HUGE thanks to nameless (its his actual name) for writting this file and effectively showing me how the lua stack works!
#include <lauxlib.h>
#include <lua.h>
#include <uiohook.h>
#include "event.h"
static lua_State *luiohook_state;

void luiohook_on_event(uiohook_event *const event) {
  if (event->type == EVENT_KEY_PRESSED) {
    lua_pushstring(luiohook_state, "uiohook_key_pressed");
    lua_gettable(luiohook_state, LUA_REGISTRYINDEX);

    lua_pushinteger(luiohook_state, event->data.keyboard.keycode);
    lua_gettable(luiohook_state, -2);


    if (lua_isfunction(luiohook_state, -1)) {
      lua_pushfstring(luiohook_state, "%lc", event->data.keyboard.keychar);
      lua_pushinteger(luiohook_state, event->time);



      lua_call(luiohook_state, 2, 1);

      if (lua_toboolean(luiohook_state, -1)) {
        int status = hook_stop();

        (void)status;
      }

      lua_pop(luiohook_state, 1); 
    }
    lua_pop(luiohook_state, 1); 
  }
}


int luiohook_register(lua_State *L) {
  luaL_argcheck(L, lua_isnumber(L, 1), 1, "expected number");
  luaL_argcheck(L, lua_isfunction(L, 2), 2, "expected function");

  lua_pushstring(L, "uiohook_key_pressed");
  lua_gettable(L, LUA_REGISTRYINDEX);

  lua_pushvalue(L, 1);
  lua_pushvalue(L, 2);


  lua_settable(L, -3);


  lua_pop(L, 1); 

  lua_pushvalue(L, 2); 
   
  return 1;
}

int luiohook_unregister(lua_State *L) {
  if (lua_isnumber(L, 1)) {
    lua_pushstring(L, "uiohook_key_pressed");
    lua_gettable(L, LUA_REGISTRYINDEX);

    lua_pushvalue(L, 1);
    lua_pushnil(L);

    lua_settable(L, -3);
    lua_pop(L, 1); 
  } else if (lua_isfunction(L, 1)) {
    lua_pushstring(L, "uiohook_key_pressed");
    lua_gettable(L, LUA_REGISTRYINDEX);
    lua_pushnil(L);
    while (lua_next(L, -2) != 0) {
      if (lua_rawequal(L, -1, 1)) {
        lua_pushvalue(L, -2);
        lua_pushnil(L);
        lua_settable(L, -5);

        lua_pop(L, 2);
        break;
      }

      lua_pop(L, 1);
    }

    lua_pop(L, 1);
  } else {
    luaL_argerror(L, 1, "expected number or function");
  }

  return 0;
}

int luiohook_run(lua_State *L) {
  luiohook_state = L;

  hook_set_dispatch_proc(&luiohook_on_event);
  hook_run();
  return 0;
}
