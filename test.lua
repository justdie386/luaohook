package.cpath = "./?.so"

local mouse = require "luaohook.press"
local event = require "luaohook.event"

local isbool = math.random(1, 2)
local bool
if isbool == 1 then
    bool = true
else
    bool = false
end
if bool == true then
    print("its true!")
else
    print("its false!")
end
