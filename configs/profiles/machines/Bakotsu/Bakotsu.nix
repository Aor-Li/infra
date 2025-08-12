{ config, ... }:
{
  flake.modules.nixos."machine/Bakotsu" = {
    imports = [
      ./_specifics/specifics.nix
      config.flake.modules.nixos."host/wsl"
    ];
  };
}
