--this file contains EVERYTHING there could be
local mouse = require "luaohook.mouse"
local keyboard = require "luaohook.keyboard"
print(mouse.getSensitivity())
print(mouse.getKeyboardRepeatRate())
print(mouse.getKeyboardRepeatDelay())
print(mouse.getAccelerationMultiplier())
print(mouse.getMonitorHeight())
print(mouse.getMonitorWidth())

keyboard.press(0x0041) --will press the key A
keyboard.release(0x0041) --will release the key A
keyboard.hold(0x0041) --will hold the key A
mouse.move(80, 80) --will move the mouse to the coordinate 80/80 on the current monitor
mouse.scroll() --will scroll up (can't seem to be able to change much of the function, it can only go up and you can't set how far it goes)
mouse.press(1) --will press the mouse button 1, can press all the buttons on the mouse
mouse.pressCoordinates(80, 80) --will move the mouse to the 80/80 coordinates and press it
mouse.hold(1) --will hold the mouse 1 button
mouse.release(1) --will release the mouse 1 button
