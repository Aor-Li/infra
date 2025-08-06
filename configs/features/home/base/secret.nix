{ inputs, ... }:
{
  flake.modules.homeManager."feature/base" =
    { config, pkgs, ... }:
    {
      imports = [
        inputs.sops-nix.homeManagerModules.sops
      ];
      home.packages = [ pkgs.sops ];
    };
}