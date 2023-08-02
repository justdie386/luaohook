#ifndef PRESS_H_
#define PRESS_H_

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

int keyPressed;
int kbpress(lua_State *L);
int kbhold(lua_State *L);
int kbholdforever(lua_State *L);
int kbreleaseforeverkey(lua_State *L);
int luaopen_luaohook_press(lua_State *L);

#endif /* PRESS_H_ */
