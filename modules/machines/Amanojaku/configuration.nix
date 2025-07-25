{ inputs, ... }:
let
  hostname = "Amanojaku";
in
{
  flake.nixosConfigurations.${hostname} = inputs.nixpkgs.lib.nixosSystem {
    modules = [ ];
  };
}
