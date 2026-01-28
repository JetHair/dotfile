{ pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      dejavu_fonts
      eb-garamond
      fira-code
      fira-code-symbols
      font-awesome
      hackgen-nf-font
      ibm-plex
      inter
      jetbrains-mono
      material-icons
      maple-mono.NF
      minecraftia
      nerd-fonts.im-writing
      nerd-fonts.blex-mono
      noto-fonts
      noto-fonts-color-emoji
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-monochrome-emoji
      powerline-fonts
      roboto
      roboto-mono
      #symbola
      terminus_font
    ];
  };

  # onlyoffice has trouble with symlinks: https://github.com/ONLYOFFICE/DocumentServer/issues/1859
  system.userActivationScripts.copy-fonts-local-share = {
    text = ''
      FONT_DIR=~/.local/share/fonts

      # Only wipe and recreate if we're actually changing something (idempotent-ish)
      mkdir -p "$FONT_DIR"

      # Copy only if target is missing/outdated (avoids unnecessary overwrites)
      cp -u ${pkgs.corefonts}/share/fonts/truetype/* "$FONT_DIR"/ 2>/dev/null || true
      cp -u ${pkgs.eb-garamond}/share/fonts/opentype/* "$FONT_DIR"/ 2>/dev/null || true

      # Standard permissions for fonts
      chmod 755 "$FONT_DIR"
      chmod 644 "$FONT_DIR"/*

      # Rebuild font cache (helps some apps, harmless for others)
      fc-cache -f "$FONT_DIR"
    '';
  };
}
