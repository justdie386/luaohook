#ifndef MOVE_H_
#define MOVE_H_
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
#include <uiohook.h>
#include <lauxlib.h>
#include <lua.h>

int move();

#endif