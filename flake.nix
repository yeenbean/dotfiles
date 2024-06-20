{
  description = "YEENTIME";

  inputs = {
    # nixpkgs = {
    #   url = "github:NixOS/nixpkgs/nixos-unstable";
    # };
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      lib = nixpkgs.lib;
    in {
    nixosConfigurations = {
      yeenimal-g3 = lib.nixosSystem {
        specialArgs = { inherit inputs system; };
        system = "x86_64-linux";
        modules = [
          ./systems/yeenimal-g3/configuration.nix
        ];
      };
    };
  };
}