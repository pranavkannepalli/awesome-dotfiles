--[[
    Monitor configuration using xrandr
    This file is machine-specific and should be modified per-system
    
    Edit this file to match your monitor setup
--]]

local awful = require("awful")

local monitors = {}

-- Run xrandr command to configure monitors
function monitors.setup()
    -- Current setup:
    -- - eDP: Built-in laptop display (2880x1800) as primary, positioned below
    -- - DisplayPort-0: External monitor (2560x1440), positioned above the laptop
    awful.spawn.with_shell([[
        xrandr \
            --output DisplayPort-0 --mode 2560x1440 --rate 59.95 --pos 0x0 \
            --output eDP --primary --mode 2880x1800 --rate 59.99 --pos 0x1440
    ]])
end

return monitors

