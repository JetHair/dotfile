{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    bemenu
    onlyoffice-desktopeditors
    libreoffice
    wiremix
    impala
    kitty
    bluetui
    libnotify
    duf # Utility For Viewing Disk Usage In Terminal
    dysk # Disk space util nice formattting
    eza # Beautiful ls Replacement
    ffmpeg # Terminal Video / Audio Editing
    hyprpicker
    file-roller
    cliphist
    ncdu # Disk Usage Analyzer With Ncurses Interface
  ];
}
