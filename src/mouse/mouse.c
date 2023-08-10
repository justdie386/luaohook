#include "wheel.h"
#include "press.h"



static const struct luaL_Reg luiohook_mouse[] = {
    {"press", press},
    {"pressCoordinates", pressCoordinates},
    {"pressHold", pressHold},
    {"releaseHold", releaseHold},
    {"getWidth", get_monitor_width},
    {"getHeight", get_monitor_height},
    {"getMouseAccelerationMultiplier", get_acceleration_multiplier},
    {"getMouseAccelerationThreshold", get_acceleration_threshold},
    {"getKeyboardRepeatDelay", get_keyboard_repeat_delay},
    {"getMouseSensitivity", get_sensitivity},
    {"getKeyboardRepeatRate", get_keyboard_repeat_rate},
    {"scroll", scroll},
    {NULL, NULL}};

int luaopen_luaohook_mouse(lua_State *L) {
  luaL_register(L, "mouse", luiohook_mouse);
  return 1;
}