{
    files = {
        [[build\.objs\luaohook.keyboard\windows\x64\release\src\keyboard.c.obj]]
    },
    values = {
        [[C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.36.32532\bin\HostX64\x64\link.exe]],
        {
            "-nologo",
            "-machine:x64",
            [[-libpath:C:\lua\luajit\bin]],
            [[-libpath:C:\Users\justi\AppData\Local\.xmake\packages\l\luajit\2.1.0-beta3\13e6f4a6b257413e98184c57fe7c168b\lib]],
            [[-libpath:C:\Users\justi\AppData\Local\.xmake\packages\l\libuiohook\1.2.2\cafd076020034bb5bf8455b8c8407c4a\lib]],
            "/opt:ref",
            "/opt:icf",
            "user32.lib",
            "kernel32.lib",
            "gdi32.lib",
            "advapi32.lib",
            "luajit.lib",
            "uiohook.lib",
            "lua51.lib",
            "/export:luaopen_luaohook_keyboard"
        }
    }
}