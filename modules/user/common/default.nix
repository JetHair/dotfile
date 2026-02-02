{ host, ... }:
{
  imports = [
    ./bat.nix
    ./btop.nix
    ./emoji.nix
    ./eza.nix
    ./fzf.nix
    ./gh.nix
    ./git.nix
    ./gtk.nix
    ./nvim
    ./packages.nix
    ./scripts
    ./shell
    ./swaync
    ./swaylock
    ./tealdeer.nix
    ./virtmanager.nix
    ./wezterm.nix
    ./xdg.nix
    ./yazi
    ./zoxide.nix
  ];
}
