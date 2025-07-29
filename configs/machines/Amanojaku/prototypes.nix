{ config, ... }:
{
  flake.modules.nixos."machines/Amanojaku".imports = [
    config.flake.modules.nixos."prototypes/wsl"
  ];
}
