--those are all of the mouse keys possible to interact with 
--(the wheel is going to be for another file)
local mouse = {}
 mouse.buttons = {
    ["MOUSE_BUTTON1"] = 1,
    ["MOUSE_BUTTON2"] = 2,
    ["MOUSE_BUTTON3"] = 3,
    ["MOUSE_BUTTON4"] = 4,
    ["MOUSE_BUTTON5"] = 5,
}
mouse.wheel = {
    ["WHEEL_UNIT_SCROLL"] = 1,
    ["WHEEL_BLOCK_SCROLL"] = 2
}
return mouse