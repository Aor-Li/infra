/*
  Create home-manager configurations：
    - modules：flake.modules.homeManager.${user}, which is defined in modules/profiles/users/${user}
    - setting: flake.meta.user.${user}, which will be passed to all homeManager modules as userConfig
*/
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
          pkgs = inputs.nixpkgs.legacyPackages."x86_64-linux"; # todo: 这一行需要移动，为每个机器单独配置
          modules = [
            module
            {
              options.infra = lib.mkOption {
                type = lib.types.submodule { };
                default = { };
                description = "Infrastructure configuration options for home-manager.";
              };
              
            }
          ];
          extraSpecialArgs = {
            userConfig = config.flake.meta.user.${username};
          };
        };
      }
    );
}
