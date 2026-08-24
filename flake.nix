{
  description = "NixOS config by Disembleergon";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    thyx.url = "github:rccyx/thyx";
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      thyx,
      ...
    }@inputs:
    {
      nixosConfigurations = {
        toms-nixos = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./configuration.nix
            home-manager.nixosModules.home-manager
            thyx.nixosModules.default

            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                backupFileExtension = "bak";
                users.tom = ./home.nix;
                extraSpecialArgs = { inherit inputs; };
              };
            }
          ];
        };
      };
    };
}
