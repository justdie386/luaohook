#include "wheel.h"
#include "press.h"
#include "move.h"
#include "info.h"
#include <lauxlib.h>


static const struct luaL_Reg luiohook_mouse[] = {
    {"press", press},
    {"scroll", scroll},
    {"move", move},
    {"pressCoordinates", pressCoordinates},
    {"pressHold", hold},
    {"releaseHold", release},
    {"getSensitivity", get_sensitivity},
    {"getKeyboardRepeatRate", get_keyboard_repeat_rate},
    {"getKeyboardRepeatDelay", get_keyboard_repeat_delay},
    {"getAccelerationMultiplier", get_acceleration_multiplier},
    {"getMonitorHeight", get_monitor_height},
    {"getMonitorWidth", get_monitor_width},
    {NULL, NULL}};

int luaopen_luaohook_mouse(lua_State *L) {
  luaL_register(L, "mouse", luiohook_mouse);
  return 1;
}