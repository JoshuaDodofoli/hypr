# Hyprland desktop configuration

A complete Hyprland desktop built around Noctalia. Noctalia provides the bar,
application launcher, taskbar, notifications, clipboard history, screenshots,
control center, lock screen, idle handling, and session menu.

## Desktop controls

| Shortcut | Action |
| --- | --- |
| `Super+Space` | Open the application launcher |
| `Super+Return` / `Super+T` | Open Kitty |
| `Super+E` | Open Dolphin |
| `Super+W` | Open Firefox |
| `Super+Tab` | Open the window switcher |
| `Super+L` | Lock the session |
| `Ctrl+Alt+Delete` | Open the session menu |
| `Super+Shift+Escape` | Open the session menu |
| `Super+Alt+C` | Open the session menu |
| `Super+B` | Toggle the bar |
| `Super+X` | Open Control Center |
| `Super+Z` | Open Noctalia Settings |
| `Super+A` | Open notifications |
| `Super+Shift+A` | Toggle Do Not Disturb |
| `Super+V` | Open clipboard history |
| `Super+Shift+W` | Open the wallpaper picker |
| `Print` | Capture all displays |
| `Shift+Print` | Capture a region |
| `Ctrl+Shift+Print` | Capture and annotate |
| `Super+1` … `Super+0` | Switch workspace |
| `Super+Alt+1` … `Super+Alt+0` | Move the active window to a workspace |
| `Super+mouse wheel` | Cycle workspaces |

Logout ends the graphical session and returns to Noctalia Greeter; logging in
is handled by the greeter, so it intentionally has no in-session keybinding.

## Bar interactions

The bar includes a launcher, clock, workspaces, taskbar, media, system metrics,
tray, clipboard, screenshots, notifications, privacy indicator, caffeine mode,
brightness, network, Bluetooth, volume, battery, power profile, and session
button.

- Left-click widgets to open their primary panel or action.
- Right-click empty bar space to open Control Center.
- Right-click the screenshot widget to open its capture menu.
- Right-click tray icons for their native context menus.
- Right-click the launcher to open Noctalia Settings.
- Right-click volume to mute, notifications to toggle DND, and media to
  play/pause.
- Middle-click a widget to open that widget's settings.
- Click the red session icon for Lock, Logout, Lock & Suspend, Reboot, and
  Shutdown.

The idle service locks after 10 minutes, switches displays off after 11
minutes, and locks then suspends after 30 minutes. Toggle the caffeine widget
when watching something or giving a presentation.

## Configuration layout

- `hyprland.lua` loads the modular files under `config/`.
- `noctalia/config.toml` is the tracked shell and bar configuration.
- `~/.config/noctalia/config.toml` should point to the tracked Noctalia file.
- The old Waybar files can remain in `~/.config/waybar`, but Waybar is no
  longer started because running two bars causes conflicting panels and trays.

Validate changes before reloading:

```bash
Hyprland --verify-config --config ~/.config/hypr/hyprland.lua
noctalia config validate
```

Then reload the live desktop:

```bash
hyprctl reload
noctalia msg config-reload
```

## Backup

The pre-integration backup created on this machine is stored at:

```text
~/.config-backups/hyprland-20260913-103509
```

An additional copy of the former live Noctalia file is stored at
`~/.config/noctalia/config.toml.pre-hypr-repo`.
