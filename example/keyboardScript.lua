package.cpath = "./?.dll"
keyboard = require"luaohook"
mouse = require"luaohook.mouse"


keyboard.register(0x001E, function()
   print("breh")
end)
keyboard.run()