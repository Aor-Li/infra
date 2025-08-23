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
        hostName = lib.removePrefix prefix name;
      in
      {
        name = hostName;
        value = inputs.nixpkgs.lib.nixosSystem {
          modules = [
            module
            { networking = { inherit hostName; }; }
          ];
          specialArgs = {
            hostConfig = config.flake.meta.machine.${hostName} or { };
          };
        };
      }
    );
}
