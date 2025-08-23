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
    config.flake.modules.homeManager or { }
    |> lib.filterAttrs (name: _module: lib.hasPrefix prefix name)
    |> lib.mapAttrs' (
      name: module:
      let
        username = lib.removePrefix prefix name;
      in
      {
        name = username;
        value = inputs.home-manager.lib.homeManagerConfiguration {
          pkgs = inputs.nixpkgs.legacyPackages."x86_64-linux";
          modules = [
            module
          ];
          extraSpecialArgs = {
            userConfig = config.flake.meta.user.${username};
          };
        };
      }
    );
}
