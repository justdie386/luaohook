#include <lauxlib.h>
#include <lua.h>
#include <uiohook.h>
//I have no idea how all of this even works, but I won't dare to touch it, thanks nameless(his actual name)!
static lua_State *luiohook_state;

void luiohook_on_event(uiohook_event *const event, void *user_data) {
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
  hook_set_dispatch_proc(&luiohook_on_event, NULL);
  hook_run();
  return 0;
}

static const struct luaL_Reg luiohook_funcs1[] = {
    {"run", luiohook_run},
    {"register", luiohook_register},
    {"unregister", luiohook_unregister},
    {NULL, NULL}};

int luaopen_luaohook_event(lua_State *L) {
  lua_pushstring(L, "uiohook_key_pressed");
  lua_newtable(L);
  lua_settable(L, LUA_REGISTRYINDEX);
  luaL_register(L, "event", luiohook_funcs1);
  return 1;
}
