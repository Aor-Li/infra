{ inputs, ... }:
let
  name = "feature/claude-code";
  nixosModuleName = "host/common";
  homeModuleName = "user/coder";

  # define modules
  nixosModule =
    { pkgs, ... }:
    {
      environment.systemPackages = [
        pkgs.claude-code
      ];
    };

  homeModule =
    { ... }:
    {

    };

  # add flake module to outputs
  flake.flakeModules.${name} =
    { config, ... }:
    {
      config.flake.modules.nixos.${name} = nixosModule;
      config.flake.modules.homeManager.${name} = homeModule;
    };

  # apply module to current system
  flake.modules.nixos.${nixosModuleName} = nixosModule;
  flake.modules.homeManager.${homeModuleName} = homeModule;
in
{
  inherit flake;
}
