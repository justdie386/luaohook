package = "luaohook"
version = "1.0-1"
source = {
    url = "https://github.com/justdie386/luaohook",
    tag = "a cross platform global keyboard hook, that allows to write hotkeys, mouse the mouse, and get other informations about things such as the monitor's width. This library is cross platform, but will not work on wayland, other than that, windows, macos and X11 is supported (freebsd and other bsd based os haven't been tested but they should work as long as the desktop is running X11 to compile it on a BSD platform you'll most likely have to change some parts of the config file to include BSD with the other unix systems)",
}
dependencies = {
    "lua >= 5.1",
    "luarocks-build-xmake"
}
build = {
    type = "xmake",
    variables = {
        xmake = {
            win32 = {
                vs_runtime = "MT",
                arch = "x64",
            },
        }
    },
}
