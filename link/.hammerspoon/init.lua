-- Setup
local hyper = {"cmd", "alt", "ctrl"}

hs.window.animationDuration = 0
hs.window.setShadows(false)

-- App vars
local chrome    = hs.appfinder.appFromName("Google Chrome")
local iterm     = hs.appfinder.appFromName("iTerm2")
local subl      = hs.appfinder.appFromName("Sublime Text")
local finder    = hs.appfinder.appFromName("Finder")
local mail      = hs.appfinder.appFromName("Mail")
local hipchat   = hs.appfinder.appFromName("HipChat")

-- Layout
local iMac      = "iMac"
local macbook   = "Color LCD"

local full      = {0.005, 0.006, 0.992, 0.987}
local center    = {0.2, 0.2, 0.6, 0.6}
local focus     = {0.005, 0.006, 0.690, 0.987}
local aux       = {0.7, 0.006, 0.299, 0.990}

hs.layout.apply({
  {"Google Chrome", nil, nil, full},
  {"Mail", nil, nil, full},
  {"HipChat", nil, nil, full},
  {"Sublime Text", nil, nil, focus},
  {"iTerm2", "Default", nil, aux},
  {"Finder", nil, nil, center},
})

-- Hyper i to show window hints
hs.hotkey.bind(hyper, 'i', function()
    hs.hints.windowHints()
end)

-- App watches
function applicationWatcher(name, event, app)
    if (event == hs.application.watcher.activated) then
        -- hs.alert.show(name);
        if (app == subl or app == iterm) then
            iterm:unhide()
            subl:unhide()
            chrome:hide()
            finder:hide()
            mail:hide()
            hipchat:hide()
        end
    end
end

local appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()

-- Reload config on write
function reload_config(files)
    hs.reload()
end

hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
hs.alert.show("Config loaded")
