{ inputs, ... }:
let
  name = "private/nix/secret";
in
{
  flake.modules = {
    homeManager.${name} =
      { config, pkgs, ... }:
      {
        imports = [
          inputs.sops-nix.homeManagerModules.sops
        ];
        home.packages = [ pkgs.sops ];
      };
  };
}
