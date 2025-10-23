{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    wmenu
    wl-clipboard
    grim
    swappy
    slurp
    swaybg
  ];
  home.file = {
    "Pictures/Wallpapers" = {
      source = ../../../wallpapers;
      recursive = true;
    };
  };
  home.file = {
    ".config/mango" = {
      source = ./mango;
      recursive = true;
    };
  };
}
