--i will call it monitor as the main use of this really would be to get the screen infor
local monitor = require("mouse")
local mouse = require("enums") --enums is a lua file which will be in the repo, with the other lua files
local monitor_width = monitor.get_width()
local monitor_height = monitor.get_height()

monitor.press_once(mouse["MOUSE_BUTTON1"], 0.80*monitor_width, 0.80*monitor_height)
--you can go up to the MOUSE_BUTTON5 on your mouse, obviously if your mouse only have two buttons then don't bother
