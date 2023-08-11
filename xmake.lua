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

local windows_packages = {"libuiohook"}
local windows_linker = {"user32", "kernel32", "gdi32", "advapi32"}
local macos_frameworks = {"CoreFoundation", "Foundation", "Cocoa"}
local macos_packages = {"libuiohook"}
local linux_packages = {"libuiohook", "libxkbcommon", "libxcb", "libx11"}
local linux_linkers = {"xkbcommon", "xcb", "Xinerama", "X11", "Xt", "xkbcommon-x11"}
add_rules("mode.debug", "mode.release")
if is_plat("windows") then
add_requires(windows_packages)
else
add_requires("libuiohook")
end
target("luaohook.keyboard")
    add_rules("luarocks.module")
    add_files("src/keyboard.c")
    if is_plat("windows") then
        add_packages(windows_packages)
        add_links(windows_linker)
    elseif is_plat("macosx") then
        add_packages(macos_packages)
        add_frameworks(macos_frameworks)
    elseif is_plat("linux") then
        add_links(linux_linkers)
        add_packages(linux_packages)
    end
target("luaohook.event")
    add_rules("luarocks.module")
    add_files("src/event.c")
    if is_plat("windows") then
        add_packages(windows_packages)
        add_links(windows_linker)
    elseif is_plat("macosx") then
        add_packages(macos_packages)
        add_frameworks(macos_frameworks)
    elseif is_plat("linux") then
        add_links(linux_linkers)
        add_packages(linux_packages)
    end
target("luaohook.mouse")
   add_rules("luarocks.module")
   add_files("src/mouse/*.c")
   add_headerfiles("src/mouse/*.h")
   if is_plat("windows") then
       add_packages(windows_packages)
        add_links(windows_linker)
        add_headerfiles("src/mouse/win32/win32.h")
        add_files("src/mouse/win32/win32.c")
    elseif is_plat("macosx") then
        add_packages(macos_packages)
        add_frameworks(macos_frameworks)
        add_headerfiles("src/mouse/apple/osx.h")
        add_files("src/mouse/apple/osx.c")
    elseif is_plat("linux") then
        add_links(linux_linkers)
        add_packages(linux_packages)
        add_headerfiles("src/mouse/x11/x11.h")
        add_files("src/mouse/x11/x11.c")
   end