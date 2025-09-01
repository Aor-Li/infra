{ config, ... }:
let
  flake.modules.nixos."host/common" =
    { ... }:
    {
      imports = [
        config.flake.modules.nixos."feature/system"
        config.flake.modules.nixos."feature/nix"
      ];
    };
in
{
  inherit flake;
}
