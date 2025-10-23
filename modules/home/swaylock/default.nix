{ pkgs, ... }:
{
  programs.swaylock = {
    enable = true;
    settings = {
    };
  };
    xdg.configFile."swaylock/config".source = ./config;
}
