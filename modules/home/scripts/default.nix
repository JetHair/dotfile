{
  pkgs,
  profile,
  ...
}:
{
  home.packages = [
    (import ./dmenu-run.nix { inherit pkgs; })
    (import ./dmenu.nix { inherit pkgs; })
    (import ./copy.nix { inherit pkgs; })
    (import ./emopicker9000.nix { inherit pkgs; })
    (import ./nvidia-offload.nix { inherit pkgs; })
    (import ./ns.nix { inherit pkgs; })
    (import ./pmenu.nix { inherit pkgs; })
    (import ./screenshootin.nix { inherit pkgs; })
    (import ./task-waybar.nix { inherit pkgs; })
    (import ./nixi.nix {
      inherit pkgs profile;
      backupFiles = [
        ".config/mimeapps.list.backup"
      ];
    })
  ];
}
