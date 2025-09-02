{ config, ... }:
let
  flake.modules.nixos."host/wsl" =
    { hostConfig, ... }:
    {
      imports = [
        config.flake.modules.nixos."host/common"
        config.flake.modules.nixos."feature/ai"
      ];
    };
in
{
  inherit flake;
}
