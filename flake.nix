{
  description = "Basic flake with MangoWC";

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
    zen-browser.url = "github:youwen5/zen-browser-flake";
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
      host = "laptop";
      homeuser = "home";
      workuser = "work";
    in
    {
      nixosConfigurations.${host} = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          inherit homeuser;
          inherit workuser;
          inherit host;
          self = inputs.self.outPath;
        };
        modules = [
          ./drivers/default.nix
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
    };
}
