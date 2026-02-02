{ host, ... }:
{
  imports = [
    ../common
    ./fetch
    ./mango
    ./packages.nix
    ./starship.nix
    ./stylix.nix
    ./waybar
  ];
}
