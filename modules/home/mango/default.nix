{
  config,
  pkgs,
  lib,
  ...
}:
{
  home.packages = with pkgs; [
    wmenu
    wl-clipboard
    grim
    swappy
    slurp
    swaybg
    wl-kbptr
    wlrctl
  ];
  home.file.".config/mango" = {
    source = ./mango;
    recursive = true;
  };
  home.file."Pictures/Wallpapers" = {
    source = ../../../wallpapers;
    recursive = true;
  };
  wayland.windowManager.mango = {
    enable = true;
    autostart_sh = ''
      waybar >/dev/null 2>&1 &
      swaybg -i ~/Pictures/Wallpapers/wallpaper.png >/dev/null 2>&1 &
      wl-paste --type text --watch cliphist store >/dev/null 2>&1 &
      wl-paste --type image --watch cliphist store >/dev/null 2>&1 &
      swaync >/dev/null 2>&1 &

      dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots
    '';
  };
}
