-------------------------------------------------------
-- 自动监听 Hammerspoon 配置文件变化，并自动 reload
-------------------------------------------------------

local M = {}

local configPath = os.getenv("HOME") .. "/.hammerspoon/"

local function reloadConfig(files)
    for _, file in ipairs(files) do
        if file:sub(-4) == ".lua" then
            hs.reload()
            hs.alert.show("Config Reloaded")
            return
        end
    end
end

M.watcher = hs.pathwatcher.new(configPath, reloadConfig)
M.watcher:start()

return M
