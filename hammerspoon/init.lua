-- 让 Lua 能找到 modules 目录
package.path = package.path .. ";/Users/william/.hammerspoon/modules/?.lua"

-- 加载 modules/* 模块
require("ime")

require("autoreload")

hs.alert.show("已加载 模块")
