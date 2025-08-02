{ config, ... }:
{
  flake.modules.nixos."machine/Bakotsu" = {
    imports = [
      config.flake.modules.nixos."host/wsl"
    ];
  };
}
