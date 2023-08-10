#include "x11.h"
#include <X11/Xlib.h>
#include <X11/extensions/XTest.h>

MouseCoordinates findcoordinates() {
    MouseCoordinates mouse;
    mouse.x = -1;
    mouse.y = -1;

    Display *display = XOpenDisplay(NULL);

    Window root, child;
    int root_x, root_y, win_x, win_y;
    unsigned int mask;

    root = RootWindow(display, DefaultScreen(display));
    XQueryPointer(display, root, &root, &child, &root_x, &root_y, &win_x, &win_y, &mask);

    mouse.x = root_x;
    mouse.y = root_y;

    XCloseDisplay(display);
    return mouse;
}
