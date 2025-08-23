{ config, ... }:
{
  flake.modules.nixos."host/common" = {
    imports = [
      config.flake.modules.nixos."feature/nix"
      config.flake.modules.nixos."feature/network"
    ];
  };
}
