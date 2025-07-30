{ inputs, ... }:
{
  flake.modules.nixos."host/commom".imports = [
    inputs.home-manager.nixosModules.home-manager
  ];
}
