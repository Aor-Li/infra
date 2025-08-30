/*
  Create NixOS configurations:
    - modules: flake.modules.nixos.${machine}, which is defined in modules/profiles/machines/${machine}
    - setting: flake.meta.machine.${machine}, which will be passed to all NixOS modules as hostConfig
*/
{
  config,
  inputs,
  lib,
  ...
}:
let
  prefix = "machine/";
in
{
  flake.nixosConfigurations =
    config.flake.modules.nixos or { }
    |> lib.filterAttrs (name: _module: lib.hasPrefix prefix name)
    |> lib.mapAttrs' (
      name: module:
      let
        machine = lib.removePrefix prefix name;
      in
      {
        name = machine;
        value = inputs.nixpkgs.lib.nixosSystem {
          modules = [
            module
            {
              networking = {
                hostName = machine;
              };
            }
          ];
          specialArgs = {
            hostConfig = config.flake.meta.machine.${machine} or { };
          };
        };
      }
    );
}
