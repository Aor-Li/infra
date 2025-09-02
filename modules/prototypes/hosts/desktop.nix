{ config, ... }:
let
  flake.modules.nixos."host/desktop" =
    { hostConfig, ... }:
    {
      imports = [
        config.flake.modules.nixos."host/common"
      ];
    };
in
{
  inherit flake;
}
