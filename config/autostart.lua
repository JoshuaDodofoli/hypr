-- Auto-start config
-- if you dont use UWSM add your auto start programs here, otherwise use XDG autostart https://wiki.archlinux.org/title/XDG_Autostart

hl.on("hyprland.start", function ()
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
    -- Prefer the minimal Waybar setup, but keep Noctalia as a fallback until Waybar is installed.
    hl.exec_cmd("sh -c 'if command -v waybar >/dev/null 2>&1; then exec waybar; else exec noctalia; fi'")
    hl.exec_cmd("xhost +SI:localuser:root")
end)
