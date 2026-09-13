# Minimal Hyprland desktop

A complete CachyOS/Hyprland setup centered on a custom minimal Waybar. The
desktop uses standalone Hyprland tools rather than a desktop shell:

- Waybar for the panel
- Rofi for the launcher and context menus
- Hyprlock + Hypridle for lock and power management
- SwayNotificationCenter for notifications and Do Not Disturb
- Hyprpaper for wallpapers
- Cliphist for clipboard history
- Hyprpolkitagent for graphical authentication prompts

## Keybindings

| Shortcut | Action |
| --- | --- |
| `Super+Space` | Application launcher |
| `Super+Return` / `Super+T` | Kitty terminal |
| `Super+E` | Dolphin file manager |
| `Super+W` | Firefox |
| `Super+Tab` | Window switcher |
| `Super+X` | Quick settings menu |
| `Super+Z` | GTK appearance settings |
| `Super+L` | Lock now |
| `Ctrl+Alt+Delete` | Session menu |
| `Super+Shift+Escape` | Session menu |
| `Super+Alt+C` | Session menu |
| `Super+B` | Hide/show Waybar |
| `Super+A` | Notification center |
| `Super+Shift+A` | Toggle Do Not Disturb |
| `Super+V` | Clipboard history |
| `Super+Shift+W` | Wallpaper menu |
| `Print` | Capture all displays |
| `Shift+Print` | Capture a region |
| `Ctrl+Shift+Print` | Capture and annotate |
| `Super+1` … `Super+0` | Switch workspace |
| `Super+Alt+1` … `Super+Alt+0` | Move window to workspace |
| `Super+mouse wheel` | Cycle workspaces |

Logging in is handled by Noctalia Greeter after logout. There is intentionally
no “login” keybinding inside an active desktop session.

## Waybar controls

The bar stays visually small while exposing details in tooltips and actions:

- Launcher: left-click opens apps; right-click opens Quick Settings.
- Workspaces: click or scroll to switch.
- Clock: left-click toggles date format; hover shows a calendar; right-click
  opens Quick Settings.
- Media: click to play/pause; right-click skips to the next track.
- Caffeine: click to pause/resume idle locking.
- Tray: application icons provide their native context menus.
- Notifications: left-click opens the center; right-click toggles DND.
- Bluetooth: left-click manages devices; right-click toggles power.
- Network: left-click edits connections; right-click opens its context menu.
- Volume: click mutes, middle-click opens the mixer, right-click opens audio
  controls, and scrolling changes volume.
- Brightness: scroll to adjust.
- Battery: left-click chooses a power profile; right-click opens the session
  menu.
- Power: left-click opens the confirmed session menu; right-click locks now.

Logout, reboot, and shutdown always require a second confirmation. The session
locks after 10 minutes, turns displays off after 11 minutes, and suspends after
30 minutes. Caffeine mode inhibits those timeouts.

## Layout

- `hyprland.lua` loads the modular Hyprland files in `config/`.
- `waybar/` contains the tracked bar layout and styling.
- `scripts/` contains all context menus and desktop helpers.
- `rofi/menu.rasi` styles context menus.
- `hyprlock.conf`, `hypridle.conf`, and `hyprpaper.conf` configure the
  standalone session services.

## Dependencies

The configured system uses these packages:

```text
waybar rofi hyprlock hypridle hyprpaper swaync cliphist
hyprpolkitagent pavucontrol network-manager-applet blueman
wl-clipboard grim slurp satty playerctl brightnessctl
```

## Validation

```bash
Hyprland --verify-config --config ~/.config/hypr/hyprland.lua
jq empty ~/.config/hypr/waybar/config.jsonc
bash -n ~/.config/hypr/scripts/*
```

## Backup

The pre-integration Hyprland, Waybar, and Noctalia files are backed up at:

```text
~/.config-backups/hyprland-20260913-103509
```
