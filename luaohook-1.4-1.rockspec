package = "luaohook"
version = "1.4-1"
source = {
    url = "git://github.com/justdie386/luaohook",
    tag = "main",
}
description = {
    summary = "a cross platform global keyboard hook",
    detailed  = [[
        
    ]]
}
dependencies = {
    "lua >= 5.1",
    "luarocks-build-xmake"
}
build = {
    type = "xmake",

    install = {
            lua = {
                ["luaohook.keyboardkeys"] = "src/enums/keyboardkeys.lua",
                ["luaohook.mousebuttons"] = "src/enums/mousebuttons.lua",
                ["luaohook.eventtype"] = "src/enums/events.lua",
                  }
              },
        }  

