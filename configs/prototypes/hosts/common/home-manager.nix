{ inputs, ... }:
{
  flake.modules.nixos.common = [
    inputs.home-manager.nixosModules.home-manager
  ];
}
