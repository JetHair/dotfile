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
    source = ../../../../wallpapers;
    recursive = true;
  };
  wayland.windowManager.mango = {
    enable = true;
  };
}
