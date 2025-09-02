{ config, ... }:
let
  flake.modules.nixos."host/server" =
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
