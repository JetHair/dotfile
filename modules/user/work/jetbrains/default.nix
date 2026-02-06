{ pkgs, ... }:

{
  home.packages = with pkgs; [
    jetbrains.phpstorm
    php
  ];
  home.file = {
    ".ideavimrc".source = ./.ideavimrc;
  };
}
