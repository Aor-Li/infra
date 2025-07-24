{
  description = "A collection of utility functions for Nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    inputs@{ self, flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      # Import all modules from the modules directory
      imports = [
        ./modules/readDirToList.nix
        # Add more modules here as needed
      ];
    };
}
