#include <CoreGraphics/CoreGraphics.h>

CGPoint findcoordinates() {
  CGEventRef event = CGEventCreate(NULL);
  CGPoint cursor = CGEventGetLocation(event);
  CFRelease(event);
  return cursor;
}