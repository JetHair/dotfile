{ host, ... }:
{
  imports = [
    ../common
    ./fetch
    ./jetbrains
    ./mango
    ./packages.nix
    ./starship.nix
    ./stylix.nix
    ./qutebrowser
    ./waybar
  ];
}
