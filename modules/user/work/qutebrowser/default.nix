{
  pkgs,
  lib,
  config,
  ...
}:
{
  home.file.".config/qutebrowser/greasemonkey" = {
    source = ./qutebrowser/greasemonkey;
    recursive = true;
  };
  home.file.".config/qutebrowser/styles" = {
    source = ./qutebrowser/styles;
    recursive = true;
  };
  home.file = {
    ".config/qutebrowser/config.py".source = ./qutebrowser/config.py;
    ".config/qutebrowser/colorscheme.py".source = ./qutebrowser/colorscheme.py;
  };

  home.packages = with pkgs; [
    mpv
    qutebrowser
  ];
}
