{ config, ... }:
{
  flake.modules.nixos."host/desktop" =
    { ... }:
    {
      imports = [
        config.flake.modules.nixos."host/desktop/boot"
      ];
    };
}
