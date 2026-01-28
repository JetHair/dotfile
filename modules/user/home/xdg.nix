{ pkgs, ... }:
{
  xdg = {
    enable = true;
    mime.enable = true;
    mimeApps = {
      enable = true;
    };
    portal = {
      enable = true;
      extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
      config.common.default = "*";
    };
  };
}
