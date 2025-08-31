{ config, ... }:
let
  flake.modules.nixos."host/server" =
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
