#ifdef _WIN32
#include <windows.h>
#include <winuser.h>
#include "win32/win32.h"
#define coords POINT
#define sleep(x) Sleep(1000 * (x))
#elif __APPLE__
#include <unistd.h>
#include "osx/osx.h"
#define coords CGPoint
#elif __linux__ 
#include <unistd.h>
#include "x11/x11.h"
#define coords MouseCoordinates
#endif
#include <lauxlib.h>
#include <lua.h>
#include <uiohook.h>
#include "press.h"
// no comments, enjoy this *perfect* code
static uiohook_event *event = NULL;

int press(lua_State *L) {
  event = (uiohook_event *)malloc(sizeof(uiohook_event));
  event->type = EVENT_MOUSE_PRESSED;
  event->data.mouse.button = lua_tonumber(L, 1);
  coords p = findcoordinates();
  event->data.mouse.x = p.x/2;
  event->data.mouse.y = p.y;
  hook_post_event(event);
  event->type = EVENT_MOUSE_RELEASED;
  coords p2 = findcoordinates();
  event->data.mouse.x = p2.x/2;
  event->data.mouse.y = p2.y;
  hook_post_event(event);
  free(event);
  return 0;
}
int pressCoordinates(lua_State *L) {
  event = (uiohook_event *)malloc(sizeof(uiohook_event));
  event->data.mouse.button = lua_tonumber(L, 1);
  event->type = EVENT_MOUSE_PRESSED;
  event->data.mouse.x = lua_tonumber(L, 2);
  event->data.mouse.y = lua_tonumber(L, 3);
  hook_post_event(event);
  free(event);
  return 0;
}

int hold(lua_State *L) {
  event = (uiohook_event *)malloc(sizeof(uiohook_event));
  event->data.mouse.button = lua_tonumber(L, 1);
  event->type = EVENT_MOUSE_PRESSED;
  event->data.mouse.x = lua_tonumber(L, 2);
  event->data.mouse.y = lua_tonumber(L, 3);
  hook_post_event(event);
  free(event);
  return 0;
}

int release(lua_State *L) {
  event = (uiohook_event *)malloc(sizeof(uiohook_event));
  event->type = EVENT_MOUSE_RELEASED;
  event->data.mouse.button = lua_tonumber(L, 1);
  hook_post_event(event);
  free(event);
  return 0;
}