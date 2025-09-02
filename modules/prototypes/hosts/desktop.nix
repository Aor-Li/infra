{ config, ... }:
let
  flake.modules.nixos."host/desktop" =
    { ... }:
    {
      imports = [
        config.flake.modules.nixos."host/common"
      ];
    };
in
{
  inherit flake;
}
