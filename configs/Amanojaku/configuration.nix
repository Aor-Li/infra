{ inputs, ... }:
let 
  inherit (inputs) nixpkgs home-manager nixos-wsl flake-parts import-tree sops-nix;
in
{
  # register configuration infos into flake.meta
  flake.meta.machines.Amanojaku = {
    host_modules = [
      common
      wsl
    ];
    user_modules = [
      aor
    ];
  };

  # import machine specific configurations
  imports = [
    ./specifics
  ];
};
