{
  pkgs,
  ...
}:
{
  # Styling Options
  stylix = {
    enable = true;
    base16Scheme = {
      base00 = "000000"; # bg
      base01 = "22262b"; # bg-alt
      base02 = "282c34"; # base3
      base03 = "3d424a"; # base4
      base04 = "c0bdb8"; # fg-alt
      base05 = "e0dcd4"; # fg
      base06 = "e8e4dc"; # base8
      base07 = "f5f2eb"; # bright
      base08 = "c8beb8"; # red
      base09 = "c8c0b0"; # orange
      base0A = "ccc4b0"; # yellow
      base0B = "b4beb4"; # green
      base0C = "b0bcc8"; # cyan
      base0D = "b4bec8"; # blue
      base0E = "c4beb8"; # violet
      base0F = "c0b8bc"; # magenta
    };
    polarity = "dark";
    opacity.terminal = 1.0;
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrains Mono";
      };
      sansSerif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
      serif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
      sizes = {
        applications = 12;
        terminal = 15;
        desktop = 11;
        popups = 12;
      };
    };
  };
}
