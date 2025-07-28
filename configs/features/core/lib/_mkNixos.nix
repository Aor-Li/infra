{
  inputs,
  lib,
  ...
}:
let
  prefix = "machines/";

  inherit (inputs.self.meta.host)
    name
    system
    type
    ;

  flake.lib.mkNixos =
    hostConfig:
    inputs.nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        inputs.self.modules.nixos.${hostConfig.type}
        inputs.self.modules.nixos.${hostConfig.name}
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
