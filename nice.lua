local wheel = require"luaohook.mouse"
local kb = require"luaohook.event"

kb.register(0x001E, function()
print("nice")
end)

kb.run()