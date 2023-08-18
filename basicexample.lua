--this file is more of a way to test if you correctly built the package for your system, if this works then everything else should work like a charm
local mouse = require "luaohook.mouse"
local event = require "luaohook.event"
local keys = require "luaohook.keyboardkeys"
local mouseButtons = require "luaohook.mousebuttons"
event.register(0x0041, function()
    mouse.press(1)
end)

event.run()