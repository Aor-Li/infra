{ config, ... }:
{
  flake.modules.nixos."host/wsl".imports = [
    config.flake.modules.nixos."host/common"
  ];
}
