{ pkgs, ... }:

{
  home.packages = with pkgs; [
    jetbrains.phpstorm
    php85
    php.extensions.xdebug
    php85Packages.composer
  ];
  home.file = {
    ".ideavimrc".source = ./.ideavimrc;
  };
}
