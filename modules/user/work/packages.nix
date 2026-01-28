{ pkgs, ... }:

{
  home.packages = with pkgs; [
    anki
    amfora # Fancy Terminal Browser For Gemini Protocol
    cmatrix # Matrix Movie Effect In Terminal
    cowsay # Great Fun Terminal Program
    bemenu
    cava
    onlyoffice-desktopeditors
    libreoffice
    qbittorrent
    wiremix
    ytmdl # Tool For Downloading Audio From YouTube
    impala
    eog
    kitty
    bluetui
    vesktop
    vlc
    htop
    gimp
    libnotify
    duf # Utility For Viewing Disk Usage In Terminal
    discordo
    dysk # Disk space util nice formattting
    eza # Beautiful ls Replacement
    ffmpeg # Terminal Video / Audio Editing
    senpai
    onefetch
    hyprpicker
    file-roller
    cliphist
    ytmdesktop
    ncdu # Disk Usage Analyzer With Ncurses Interface
    lolcat # Add Colors To Your Terminal Command Output
    qutebrowser
    # viber
  ];
}
