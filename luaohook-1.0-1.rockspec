package = "luaohook"
version = "1.0-1"
source = {
    url = "https://github.com/justdie386/luaohook",
    tag = "testin"
}
dependencies = {
    "lua >= 5.1",
    "luarocks-build-xmake"
}
build = {
    type = "xmake",
    variables = {
        xmake = {
            vs_runtime = "MT",
            arch = "x64",
        }
    },
}