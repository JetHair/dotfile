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
    (callPackage ./bitwarden.nix { })
  ];
}
