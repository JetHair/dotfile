waybar >/dev/null 2>&1 &
swaybg -i ~/Pictures/Wallpapers/wallpaper.png >/dev/null 2>&1 &
wl-paste --type text --watch cliphist store >/dev/null 2>&1 &
wl-paste --type image --watch cliphist store >/dev/null 2>&1 &
swaync >/dev/null 2>&1 &

dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots
# The next line of command is not necessary. It is only to avoid some situations where it cannot start automatically
/usr/lib/xdg-desktop-portal-wlr &
