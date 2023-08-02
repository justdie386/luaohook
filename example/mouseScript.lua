package.cpath = "./?.dll"
local monitor = require("mouse")
package.path = "./?.lua"
local mouse = require("enums")
local monitor_width = monitor.get_width()
local monitor_height = monitor.get_height()
print(monitor_height)
print(monitor_width)
