//big thanks to nameless (truemedian) for making this script
//to show me how to the lua c api stack works
#include <lua5.1/lauxlib.h>
#include <lua5.1/lua.h>
#include <uiohook.h>

static lua_State *luiohook_state;

void luiohook_on_event(uiohook_event *const event) {
  if (event->type == EVENT_KEY_PRESSED) {
    lua_pushstring(luiohook_state, "uiohook_key_pressed");
    lua_gettable(luiohook_state, LUA_REGISTRYINDEX);

    lua_pushinteger(luiohook_state, event->data.keyboard.keycode);
    lua_gettable(luiohook_state, -2);

    // Stack:
    // -1: R.uiohook_key_pressed[keycode] (a function, or nil)
    // -2: R.uiohook_key_pressed

    if (lua_isfunction(luiohook_state, -1)) {
      lua_pushfstring(luiohook_state, "%lc", event->data.keyboard.keychar);
      lua_pushinteger(luiohook_state, event->time);

      // Stack:
      // -1: event.time [arg 2]
      // -2: event.keychar [arg 1]
      // -3: R.uiohook_key_pressed[keycode] (a function)
      // -4: R.uiohook_key_pressed

      lua_call(luiohook_state, 2, 1);

      // Stack:
      // -1: return value
      // -2: R.uiohook_key_pressed

      if (lua_toboolean(luiohook_state, -1)) {
        int status = hook_stop();
        // handle error

        (void)status;
      }

      lua_pop(luiohook_state, 1); // remove return value
    }

    // Stack:
    // -1: R.uiohook_key_pressed

    lua_pop(luiohook_state, 1); // remove R.uiohook_key_pressed
  }
}

// register(keycode, function) function
int luiohook_register(lua_State *L) {
  luaL_argcheck(L, lua_isnumber(L, 1), 1, "expected number");
  luaL_argcheck(L, lua_isfunction(L, 2), 2, "expected function");

  lua_pushstring(L, "uiohook_key_pressed");
  lua_gettable(L, LUA_REGISTRYINDEX);

  lua_pushvalue(L, 1);
  lua_pushvalue(L, 2);

  // Stack:
  // -1: function
  // -2: keycode
  // -3: R.uiohook_key_pressed

  lua_settable(L, -3); // R.uiohook_key_pressed[keycode] = function

  // Stack:
  // -1: R.uiohook_key_pressed

  lua_pop(L, 1); // remove R.uiohook_key_pressed

  lua_pushvalue(L, 2); // push the function again to return it (makes it easier
                       // to unregister by function)

  // Stack:
  // -1: function

  return 1;
}

// unregister(keycode|function) nil
int luiohook_unregister(lua_State *L) {
  if (lua_isnumber(L, 1)) {
    lua_pushstring(L, "uiohook_key_pressed");
    lua_gettable(L, LUA_REGISTRYINDEX);

    lua_pushvalue(L, 1);
    lua_pushnil(L);

    // Stack:
    // -1: nil
    // -2: keycode
    // -3: R.uiohook_key_pressed

    lua_settable(L, -3); // R.uiohook_key_pressed[keycode] = nil

    // Stack:
    // -1: R.uiohook_key_pressed

    lua_pop(L, 1); // remove R.uiohook_key_pressed
  } else if (lua_isfunction(L, 1)) {
    lua_pushstring(L, "uiohook_key_pressed");
    lua_gettable(L, LUA_REGISTRYINDEX);

    lua_pushnil(L); // the first key

    // Stack:
    // -1: nil
    // -2: R.uiohook_key_pressed

    while (lua_next(L, -2) != 0) {
      // Stack:
      // -1: value
      // -2: key
      // -3: R.uiohook_key_pressed

      if (lua_rawequal(L, -1, 1)) {
        lua_pushvalue(L, -2);
        lua_pushnil(L);

        // Stack:
        // -1: nil
        // -2: key
        // -3: value
        // -4: key
        // -5: R.uiohook_key_pressed

        lua_settable(L, -5); // R.uiohook_key_pressed[key] = nil

        lua_pop(L, 2); // remove key and value because we're done
        break;
      }

      lua_pop(L, 1); // remove value so key is on top for next iteration
    }

    // Stack:
    // -1: R.uiohook_key_pressed

    lua_pop(L, 1); // remove R.uiohook_key_pressed
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

static const struct luaL_Reg luiohook_funcs[] = {
    {"run", luiohook_run},
    {"register", luiohook_register},
    {"unregister", luiohook_unregister},
    {NULL, NULL}};

int luaopen_keyboard(lua_State *L) {
  lua_pushstring(L, "uiohook_key_pressed");
  lua_newtable(L);
  lua_settable(L, LUA_REGISTRYINDEX);

  luaL_register(L, "uiohook", luiohook_funcs);

  return 1;
}