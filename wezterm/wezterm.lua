local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Catppuccin Mocha (Gogh)'
config.colors = {
    background = '#000000',
    tab_bar = {
        background = "#0f1720",
    }
}

config.keys = {
    {
        key = "t",
        mods = "CTRL|SHIFT",
        action = wezterm.action { SpawnTab = "CurrentPaneDomain" },
    },
    {
        key = "L",
        mods = "CTRL|SHIFT",
        action = wezterm.action { ActivateTabRelative = 1 },
    },
    {
        key = "H",
        mods = "CTRL|SHIFT",
        action = wezterm.action { ActivateTabRelative = -1 },
    },
    {
        key = '{',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.MoveTabRelative(-1)
    },
    {
        key = '}',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.MoveTabRelative(1)
    },
}

config.window_background_opacity = 0.8

config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.show_new_tab_button_in_tab_bar = false

local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")
tabline.setup({
    sections = {
        tabline_a = { 'mode' },
        tabline_b = {},
        tabline_c = {},
        tabline_x = {},
        tabline_y = {},
        tabline_z = {},
    }
})


return config
