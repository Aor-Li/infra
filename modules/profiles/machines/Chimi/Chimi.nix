{ config, ... }:
{
  flake.modules.nixos."machine/Chimi" = {
    imports = [
      ./_specifics/hardware-configuration.nix
      config.flake.modules.nixos."host/server"
    ];
  };
}
