{ withSystem, inputs, ... }:
let 
  system = "x86_64-linux";
  host = "Amanojaku";
  users = [ "aor" ];
in
{
  # add machine specific configurations
  flake.nixosConfiguration.${host} = withSystem "${system}" (ctx@{ config, inputs', ...}: {
    inputs.nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit inputs inputs';
      };
      modules = [
        ./_specifics
      ];
    };
  })

  # config
  flake.modules.hosts.wsl.enable = true;
  flake.modules.homes.developer.enable = true;
};
