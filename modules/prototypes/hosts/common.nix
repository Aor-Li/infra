{ config, ... }:
let
  flake.modules.nixos."host/common" =
    { ... }:
    {
      imports = [
        config.flake.modules.nixos."feature/system"
      ];
    };
in
{
  inherit flake;
}
