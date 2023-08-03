package.cpath = "./?.so"
local mouse = require "luaohook.press"
local test = require "luaohook"
local screen = require "luaohook.mouse"
local monitor_width = screen.get_width()
local monitor_height = screen.get_height()
print(monitor_height)
print(monitor_width)
test.credit()
