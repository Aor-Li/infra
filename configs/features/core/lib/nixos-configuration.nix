{ config, lib, ... }:
let
  prefix = "machines/";
in
{
  flake.nixosConfigurations =
    config.flake.modules.nixos or { }
    |> lib.filterAttrs (name: _module: lib.hasPrefix prefix name)
    |> lib.mapAttrs' (
      name: module:
      let
        machineName = lib.removePrefix prefix name;
      in
      {
        name = machineName;
        value = lib.nixosSystem {
          modules = [
            module
          ];
        };
      }
    );
}
