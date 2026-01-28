{
  pkgs,
  config,
  inputs,
  ...
}:
{
  programs = {
    neovim = {
      enable = true;
      defaultEditor = true;
    };
    obs-studio = {
      enable = false;
      enableVirtualCamera = true;
      package = (
        pkgs.obs-studio.override {
          cudaSupport = true;
        }
      );
      plugins = with pkgs.obs-studio-plugins; [
        wlrobs
        obs-backgroundremoval
        obs-pipewire-audio-capture
        obs-gstreamer
        obs-vkcapture
      ];
    };
    dconf.enable = true;
    seahorse.enable = true;
    fuse.userAllowOther = true;
    mtr.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    zip
    unzip
    brightnessctl # For Screen Brightness Control
    docker-compose # Allows Controlling Docker From A Single File
    mesa-demos
    tuigreet # The Login Manager (Sometimes Referred To As Display Manager)
    inxi # CLI System Information Tool
    killall # For Killing All Instances Of Programs
    lm_sensors # Used For Getting Hardware Temps
    lshw # Detailed Hardware Information
    nixfmt-rfc-style # Nix Formatter
    nwg-displays # configure monitor configs via GUI
    pavucontrol # For Editing Audio Levels & Devices
    pciutils # Collection Of Tools For Inspecting PCI Devices
    pkg-config # Wrapper Script For Allowing Packages To Get Info On Others
    xdg-desktop-portal-wlr
    ripgrep # Improved Grep
    socat # Needed For Screenshots
    unrar # Tool For Handling .rar Files
    unzip # Tool For Handling .zip Files
    usbutils # Good Tools For USB Devices
    v4l-utils # Used For Things Like OBS Virtual Camera
    wget # Tool For Fetching Files With Links
    inputs.zen-browser.packages.x86_64-linux.default
  ];
}
