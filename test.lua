test = require"luaohook.event"
kb = require"luaohook.keyboard"
mouse = require"luaohook.mouse"
--[[test.register(0x0002, function()
    print("kb was pressxed!")
    kb.kbpress(0x002D)
end)]]
mouse.press_once()
test.run()