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
      yeenimal-g3 = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./systems/yeenimal-g3/configuration.nix
          ./systems/yeenimal-g3/hardware-configuration.nix
        ];
      };
    };
  };
}