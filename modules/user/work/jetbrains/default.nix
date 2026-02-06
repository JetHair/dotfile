{ pkgs, ... }:

{
  home.packages = with pkgs; [
    jetbrains.phpstorm
    php
    php.extensions.xdebug
    composer
  ];
  home.file = {
    ".ideavimrc".source = ./.ideavimrc;
  };
}
