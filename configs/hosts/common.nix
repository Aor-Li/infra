{ config, ... }:
{
  flake.modules.nixos."host/common" = {
    imports = [
      config.flake.modules.nixos."features/nix"
    ];
  };
}
