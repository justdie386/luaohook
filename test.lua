-- run this to test if the library was correctly built
package.cpath = "./?.so"

local press = require"press"
local keyboard = require"keyboard"
keyboard.register(0x001E, function()
print("nice")
press.kbpress(0x002E)
end)

keyboard.run()