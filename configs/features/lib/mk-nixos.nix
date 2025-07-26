{
  inputs,
  lib,
  ...
}:
let
  prefix = "machines/";

  inherit (flake.meta.host)
    name
    system
    type
    ;

  flake.lib.mkNixos =
    hostConfig:
    inputs.nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        inputs.flake.modules.nixos.${hostConfig.type}
        inputs.flake.modules.nixos.${hostConfig.name}
        {
          networking.hostName = lib.mkDefault hostConfig.name;
          nixpkgs.hostPlatform = lib.mkDefault hostConfig.system;
          system.stateVersion = "25.05";
        }
      ];
    };
in
{
  inherit flake;
}
