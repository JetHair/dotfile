{
  pkgs,
  lib,
  config,
  ...
}:
{
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
  };
  xdg.configFile."waybar" = {
    source = ./waybar;
    recursive = true;
  };

}
