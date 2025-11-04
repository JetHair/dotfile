{ pkgs, ... }:
{
  xdg.portal = {
    wlr.enable = true;
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
  };
  services = {
    flatpak = {
      enable = true;

      # List the Flatpak applications you want to install
      # Use the official Flatpak application ID (e.g., from flathub.org)
      # Examples:
      packages = [
        "com.stremio.Stremio"
        # Add other Flatpak IDs here, e.g., "org.mozilla.firefox"
      ];

      # Automatically update Flatpaks when you run nixos-rebuild switch
      update.onActivation = true;
    };
  };
}
