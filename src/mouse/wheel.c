#ifdef _WIN32
#include <windows.h>
#include <winuser.h>
#include "win32/win32.h"
#define coords POINT
#elif __APPLE__
#include <unistd.h>
#include "osx/osx.h"
#define coords CGPoint
#else
#include <unistd.h>
#include "x11/x11.h"
#define coords MouseCoordinates
#endif
#include <stdlib.h>
#include <uiohook.h>
#include <lauxlib.h>
#include <lua.h>
#include "wheel.h"
static uiohook_event *event = NULL;

int scroll(lua_State *L){
    event = (uiohook_event *)malloc(sizeof(uiohook_event));
    event->type = EVENT_MOUSE_WHEEL;
    event->data.mouse.button = WHEEL_UNIT_SCROLL;
    coords p = findcoordinates();
    event->data.wheel.x = p.x;
    event->data.wheel.y = p.y;
    event->data.wheel.direction = WHEEL_VERTICAL_DIRECTION;
    hook_post_event(event);
    free(event);
    return 0;
}