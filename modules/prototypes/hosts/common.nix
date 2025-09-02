{ config, ... }:
let
  flake.modules.nixos."host/common" =
    { ... }:
    {
      imports = [
        config.flake.modules.nixos."private/system"
        config.flake.modules.nixos."private/nix"
      ];
    };
in
{
  inherit flake;
}
