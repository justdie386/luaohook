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


#ifdef _WIN32
#include <windows.h>
#define sleep(x) Sleep(1000 * (x))
#else
#include <unistd.h>
#endif
#include <lauxlib.h>
#include <lua.h>
#include <stdlib.h>
#include <uiohook.h>
#include "keyboard.h"

static uiohook_event *event = NULL;
static int keyPressed;
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

