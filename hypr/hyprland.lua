hl.on("hyprland.start", function()
    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprpaper")
end)

hl.env("XCURSOR_SIZE", "24")

hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "altgr-intl",
        follow_mouse = 1,
        touchpad = {
            natural_scroll = false
        },
        sensitivity = -0.5
    },
    general = {
        gaps_in = 3,
        gaps_out = 5,
        border_size = 2,

        col = {
            active_border = { colors = { "rgba(ff00ffee)", "rgba(3333ccee)", }, angle = 45 },
            inactive_border = "rgba(ffb3ffaa)",
        },

        layout = "dwindle"
    },
    decoration = {
        rounding = 5,

        blur = {
            enabled = true,
            size = 3,
            passes = 1,
        }
    },
    animations = {
        enabled = true
    },
    dwindle = {
        preserve_split = true
    },
    xwayland = {
        force_zero_scaling = true
    },
    cursor = {
        hide_on_key_press = true
    }
})

hl.curve("myBezier", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.animation({ leaf = "windows", enabled = true, speed = 7, bezier = "myBezier" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 7, bezier = "default", style = "popin 80%" })
hl.animation({ leaf = "border", enabled = true, speed = 10, bezier = "default" })
-- hl.animation({ leaf = "borderangel", enabled = true, speed = 8, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 7, bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "default" })

local mainMod = "SUPER"

hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("zen-browser"))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.layout("togglefloating"))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("rofi -show drun -show-icons"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("~/.config/hypr/lock.sh"))
hl.bind(mainMod .. " + I", hl.dsp.exec_cmd("~/.config/hypr/toggle_eDP-1.sh"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"))
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exec_cmd("shutdown -h 0"))

hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind("xf86monbrightnessup", hl.dsp.exec_cmd("brightnessctl set 10%+"))
hl.bind("xf86monbrightnessdown", hl.dsp.exec_cmd("brightnessctl set 10%-"))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
