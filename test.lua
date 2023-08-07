local mouse = require"luaohook.mouse"
function sleep (a) 
    local sec = tonumber(os.clock() + a); 
    while (os.clock() < sec) do 
    end
end

sleep(2)
mouse.press(1)
sleep(1)
mouse.press(1)

