--i will call it monitor as the main use of this really would be to get the screen infor
local monitor = require("mouse")

local monitor_width = monitor.get_width()
local monitor_height = monitor.get_height()

monitor.press_once(0.80*monitor_width, 0.80*monitor_height)
