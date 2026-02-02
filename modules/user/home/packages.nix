{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    anki
    amfora # Fancy Terminal Browser For Gemini Protocol
    cmatrix # Matrix Movie Effect In Terminal
    cowsay # Great Fun Terminal Program
    cava
    qbittorrent
    ytmdl # Tool For Downloading Audio From YouTube
    eog
    vesktop
    vlc
    htop
    gimp
    discordo
    senpai
    onefetch
    ytmdesktop
    inputs.zen-browser.packages.x86_64-linux.default
  ];
}
