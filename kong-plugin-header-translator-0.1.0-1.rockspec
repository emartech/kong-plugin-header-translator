package = "kong-plugin-header-translator"
version = "0.1.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-header-translator.git",
  tag = "0.1.0"
}
description = {
  summary = "Translate the contents of a header into another header based on a custom dictionary.",
  homepage = "https://github.com/emartech/kong-plugin-header-translator",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1",
  "classic 0.1.0-1",
  "kong-lib-logger >= 0.3.0-1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.header-translator.handler"] = "kong/plugins/myplugin/handler.lua",
    ["kong.plugins.header-translator.schema"] = "kong/plugins/myplugin/schema.lua",
  }
}
