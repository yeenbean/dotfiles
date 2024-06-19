{
  description = "YEENTIME";

  inputs = {
    # nixpkgs = {
    #   url = "github:NixOS/nixpkgs/nixos-unstable";
    # };
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    let
      lib = nixpkgs.lib;
    in {
    nixosConfigurations = {
      teeth = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
        ]
      };
    };
  };
}