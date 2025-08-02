{
  config,
  inputs,
  lib,
  ...
}:
let
  prefix = "user";
in
{
  flake.homeConfigurations =
    config.flake.modules.nixos or { }
    |> lib.filterAttrs (name: _module: lib.hasPrefix prefix name)
    |> lib.mapAttrs' (
      name: module:
      let
        username = lib.removePrefix prefix name;
      in
      {
        name = username;
        value = inputs.nixpkgs.lib.homeManagerConfiguration {
          modules = [
            module
          ];
        };
      }
    );
}
