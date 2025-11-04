{ host, ... }:
{
  imports = [
    ./bat.nix
    ./btop.nix
    ./emoji.nix
    ./eza.nix
    ./fetch
    ./fzf.nix
    ./gh.nix
    ./git.nix
    ./gtk.nix
    ./mango
    ./nvim
    # ./obs.nix
    ./packages.nix
    ./scripts
    ./shell
    ./starship.nix
    ./stylix.nix
    ./swaync
    ./swaylock
    ./tealdeer.nix
    ./virtmanager.nix
    ./waybar
    ./wezterm.nix
    ./xdg.nix
    ./yazi
    ./zoxide.nix
  ];
}
