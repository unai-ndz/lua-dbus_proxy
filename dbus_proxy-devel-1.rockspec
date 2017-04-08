package = "dbus_proxy"
 version = "devel-1"
 source = {
    url = "git://github.com/stefano-m/lua-dbus_proxy",
    tag = "master"
 }
 description = {
    summary = "Simple API around GLib's GIO:GDBusProxy built on top of lgi",
    detailed = "Simple API around GLib's GIO:GDBusProxy built on top of lgi",
    homepage = "https://github.com/stefano-m/lua-dbus_proxy",
    license = "Apache v2.0"
 }
 dependencies = {
    "lua >= 5.1",
    "lgi >= 0.9.0, < 1"
 }
 supported_platforms = { "linux" }
 build = {
    type = "builtin",
    modules = {
      ["dbus_proxy.init"] = "src/dbus_proxy/init.lua",
      ["dbus_proxy._variant"] = "src/dbus_proxy/_variant.lua",
      ["dbus_proxy._bus"] = "src/dbus_proxy/_bus.lua"
    },
    copy_directories = { "docs", "tests"}
 }