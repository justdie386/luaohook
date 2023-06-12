keyboard = require"keyboard"

keyboard.register(0x001E, function()
print("cool isn't it?")
end) --will register an event that will occur when the key is pressed
keyboard.register(0x002E, function()
    print("cool isn't it?")
end) --the point of this system is to make so you can listen to multiple keys

keyboard.run() --will start listening to the previous keys event

--[[
    The events will happen every time a key is pressed, its not a one time thing
]]--

keyboard.unregister(0x001E) --will make it stop listening to the key
