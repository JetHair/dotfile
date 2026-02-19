{ host, ... }:
{
  imports = [
    ../common
    ./fetch
    ./jetbrains
    ./mango
    ./matrix.nix
    ./packages.nix
    ./starship.nix
    ./stylix.nix
    ./qutebrowser
    ./waybar
  ];
}
