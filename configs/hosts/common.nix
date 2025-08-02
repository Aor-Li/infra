{ config, ... }:
{
  flake.modules.nixos."host/common" = {
    imports = [
      config.flake.modules.nixos."features/base"
      config.flake.modules.nixos."features/nix"
      config.flake.modules.nixos."features/network"
    ];
  };
}
