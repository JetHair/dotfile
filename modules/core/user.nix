{
  pkgs,
  inputs,
  workuser,
  homeuser,
  host,
  ...
}:
let
  inherit (import ../../hosts/${host}/variables.nix) gitUsername;
in
{
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    backupFileExtension = "backup";
    extraSpecialArgs = {
      inherit
        inputs
        workuser
        homeuser
        host
        ;
    };
    users.${homeuser} = {
      imports = [ ./../user/home ];
      home = {
        username = "${homeuser}";
        homeDirectory = "/home/${homeuser}";
        stateVersion = "23.11";
      };
    };
    users.${workuser} = {
      imports = [ ./../user/work ];
      home = {
        username = "${workuser}";
        homeDirectory = "/home/${workuser}";
        stateVersion = "23.11";
      };
    };
  };
  users.mutableUsers = true;
  users.users.${homeuser} = {
    isNormalUser = true;
    description = "${gitUsername}";
    extraGroups = [
      "adbusers"
      "docker" # access to docker as non-root
      "libvirtd" # Virt manager/QEMU access
      "lp"
      "networkmanager"
      "scanner"
      "wheel" # subdo access
      "vboxusers" # Virtual Box
    ];
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
  };
  users.users.${workuser} = {
    isNormalUser = true;
    description = "${gitUsername}";
    extraGroups = [
      "adbusers"
      "docker" # access to docker as non-root
      "libvirtd" # Virt manager/QEMU access
      "lp"
      "networkmanager"
      "scanner"
      "wheel" # subdo access
      "vboxusers" # Virtual Box
    ];
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
  };
  nix.settings.allowed-users = [
    "${homeuser}"
    "${workuser}"
  ];
}
