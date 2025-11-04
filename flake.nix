{
  description = "Basic MangoWC flake";

  inputs = {
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvim = {
      url = "github:jethair/nvim";
    };
    mango = {
      url = "github:DreamMaoMao/mangowc";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    stylix.url = "github:danth/stylix";
    nix-flatpak.url = "github:gmodena/nix-flatpak?ref=latest";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      nvim,
      nix-flatpak,
      mango,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      host = "ideal";
      profile = "nvidia-laptop";
      username = "ideal";

      # Deduplicate nixosConfigurations while preserving the top-level 'profile'
      mkNixosConfig =
        gpuProfile:
        nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            inherit inputs;
            inherit username;
            inherit host;
            inherit profile; # keep using the let-bound profile for modules/scripts
          };
          modules = [
            ./profiles/${gpuProfile}
            mango.nixosModules.mango
            nix-flatpak.nixosModules.nix-flatpak
            home-manager.nixosModules.default
            {
              home-manager.sharedModules = [
                mango.hmModules.mango
              ];
            }
          ];
        };
    in
    {
      nixosConfigurations = {
        amd = mkNixosConfig "amd";
        nvidia = mkNixosConfig "nvidia";
        nvidia-laptop = mkNixosConfig "nvidia-laptop";
        intel = mkNixosConfig "intel";
        vm = mkNixosConfig "vm";
      };
    };
}
