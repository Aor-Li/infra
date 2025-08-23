{ config, ... }:
{
  flake.modules.nixos."machine/Amanojaku" =
    { ... }:
    {
      imports = [
        config.flake.modules.nixos."host/wsl"
      ];
    };
}
