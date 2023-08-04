test = require"luaohook.mouse"

function sleep (a) 
    local sec = tonumber(os.clock() + a); 
    while (os.clock() < sec) do 
    end 
end


width = test.get_width()
height = test.get_height()
test.press_once(2, 0.80*height, 0.80*width)
