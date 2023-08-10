local mouse = require "luaohook.mouse"
local event = require "luaohook.event"
local keys = require "luaohook.keys"
local mouse = require "luaohook.mouse"
event.register(keys["A"], function()
    mouse.kbpress(mouse["MOUSE_BUTTON1"])
end)

event.run()
