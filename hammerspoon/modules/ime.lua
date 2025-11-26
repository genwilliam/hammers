-------------------------------------------------------
-- 自动切换输入法：基于应用是否需要常输入中文/英文
-------------------------------------------------------

local ChineseIme  = "com.apple.inputmethod.SCIM.ITABC"
local EnglishIme  = "com.apple.keylayout.ABC"

local needChinese = {
    ["Google Chrome"] = true,
    ["Safari"] = true,
    ["Telegram"] = true,
    ["Notion"] = true,
    ["Typora"] = true,
    ["DevDocs"] = true,
    ["Postman"] = true,
    ["Downie 4"] = true,
    ["IINA"] = true,
}

local needEnglish = {
    ["iTerm2"] = true,
    ["iTerm"] = true,
    ["Visual Studio Code"] = true,
    ["PyCharm"] = true,
    ["GoLand"] = true,
    ["IntelliJ IDEA"] = true,
    ["Raycast.app"] = true,
    ["Wireshark"] = true,
    ["Hammerspoon"] = true,
    ["Navicat Premium"] = true,
    ["Numbers"] = true,
    ["TextMate"] = true,
    ["draw.io"] = true,
    ["LocalSend"] = true,
}

local function switchIme(appName)
    if needChinese[appName] then
        hs.keycodes.currentSourceID(ChineseIme)
    elseif needEnglish[appName] then
        hs.keycodes.currentSourceID(EnglishIme)
    end
end

local function onActivated(appName)
    switchIme(appName)
end

local function switchIme(appName)
    if needChinese[appName] then
        hs.keycodes.currentSourceID(ChineseIme)
        hs.alert.show("Chinese")   -- 切换到中文提示
    elseif needEnglish[appName] then
        hs.keycodes.currentSourceID(EnglishIme)
        hs.alert.show("English")   -- 切换到英文提示
    end
end

appWatcher = hs.application.watcher.new(function(appName, eventType)
    if eventType == hs.application.watcher.activated then
        onActivated(appName)
    end
end)

appWatcher:start()

