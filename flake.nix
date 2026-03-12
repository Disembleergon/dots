{
  description = "NixOS config by Disembleergon";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, ... }@inputs: {
      nixosConfigurations = {
        toms-nixos = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./configuration.nix
            home-manager.nixosModules.home-manager
            {
	      home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                users.tom = ./home.nix;
	        extraSpecialArgs = { inherit inputs; };
	      };
            }
          ];
        };
      };
    };
  }
