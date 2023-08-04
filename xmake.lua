package("libuiohook")
    set_homepage("https://github.com/kwhat/libuiohook")
    set_description("A multi-platform C library to provide global keyboard and mouse hooks from userland.")

    add_urls("https://github.com/kwhat/libuiohook.git")
    add_versions("1.2.2", "23acecfe207f8a8b5161bec97a8a6fd6ad0aea88")
    if is_plat("windows") then
    add_deps("cmake")
    else
    add_deps("cmake", "libxcb", "libx11", "libxkbcommon", "libxtst")
    end
    on_install(function (package)
        local configs = {}
        table.insert(configs, "-DCMAKE_BUILD_TYPE=" .. (package:is_debug() and "Debug" or "Release"))
        table.insert(configs, "-DBUILD_SHARED_LIBS=" .. (package:config("shared") and "ON" or "OFF"))
        import("package.tools.cmake").install(package, configs)
    end)
package_end()

add_rules("mode.debug", "mode.release")
if is_plat("windows") then
add_requires("libuiohook", "luajit")
else
add_requires("libuiohook")
end
target("luaohook")
    add_rules("luarocks.module")
    add_files("src/*.c")
    add_headerfiles("src/*.h")
    if is_plat("windows") then
        add_packages("libuiohook", "luajit")
        add_links("user32", "kernel32", "gdi32", "advapi32")
    elseif is_plat("macosx") then
        add_packages("libuiohook", "luajit")
        add_frameworks("CoreFoundation", "Foundation", "Cocoa")
    elseif is_plat("linux") then
        add_links("xkbcommon", "xcb", "Xinerama", "X11", "Xt", "xkbcommon-x11")
        add_packages("libuiohook", "libxkbcommon", "libxcb", "libx11", "luajit")
    end
        add_packages("libuiohook")
        add_links("user32", "kernel32", "gdi32", "advapi32")