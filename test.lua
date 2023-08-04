test = require"luaohook.event"
kb = require"luaohook.keyboard"
test.register(0x001E, function()
    kb.kbpress(0x0019)
 end)
 test.run()