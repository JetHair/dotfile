{ pkgs, ... }:

{
  home.packages = with pkgs; [
    jetbrains.phpstorm
  ];
  home.file = {
    ".ideavimrc".source = ./.ideavimrc;
  };
}
