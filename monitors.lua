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
    -- - DP-0: Large external monitor (3840x2160), positioned above
    -- - HDMI-1: Smaller display (1280x800) as primary, positioned below and centered
    -- The smaller screen is offset by 1280px to align its center with the larger screen's center
    -- This allows moving down anywhere on the larger screen to reach the smaller screen
    awful.spawn.with_shell([[
        xrandr \
            --output DP-2 --mode 3840x2160 --rate 59.95 --pos 0x0 \
            --output HDMI-1 --primary --mode 1280x800 --scale 1.5x1.5 --rate 59.99 --pos 1280x2160
    ]])
end

return monitors

