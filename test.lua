package.cpath = "./?.so"

local press = require"press"
local keyboard = require"luaohook"
keyboard.register(0x001E, function()
print("nice")
press.kbpress(0x002E)
end)

keyboard.run()