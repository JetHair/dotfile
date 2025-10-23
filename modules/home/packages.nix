{ pkgs, ... }:

{
  home.packages = with pkgs; [
    google-chrome
    anki
    amfora # Fancy Terminal Browser For Gemini Protocol
    cmatrix # Matrix Movie Effect In Terminal
    cowsay # Great Fun Terminal Program
    bemenu
    cava
    onlyoffice-desktopeditors
    qbittorrent
    wiremix
    ytmdl # Tool For Downloading Audio From YouTube
    mpv # Incredible Video Player
    impala
    eog
    kitty
    bluetui
    vesktop
    htop
    gimp
    libnotify
    duf # Utility For Viewing Disk Usage In Terminal
    dysk # Disk space util nice formattting
    eza # Beautiful ls Replacement
    ffmpeg # Terminal Video / Audio Editing
    onefetch
    hyprpicker
    file-roller
    cliphist
    mpv
    ncdu # Disk Usage Analyzer With Ncurses Interface
    lolcat # Add Colors To Your Terminal Command Output
    viber
  ];
}
