{
  config,
  inputs,
  lib,
  ...
}:
let
  prefix = "user/";
in
{
  flake.homeConfigurations =
    config.flake.modules.home or { }
    |> lib.filterAttrs (name: _module: lib.hasPrefix prefix name)
    |> lib.mapAttrs' (
      name: module:
      let
        username = lib.removePrefix prefix name;
      in
      {
        name = username;
        value = inputs.home-manager.lib.homeManagerConfiguration {
          modules = [
            module
          ];
        };
      }
    );
}
