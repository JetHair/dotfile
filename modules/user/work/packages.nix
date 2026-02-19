{ pkgs, ... }:

{
  home.packages = with pkgs; [
    anki
    vesktop
    mpv
    gimp
    file-roller
    cliphist
    qutebrowser
    discord
    discordo
    (callPackage ./bitwarden.nix { })
  ];
}
