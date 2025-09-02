{ config, ... }:
let
  flake.modules.nixos."host/common" =
    { ... }:
    {
      imports = [
        config.flake.modules.nixos."feature/system"
        config.flake.modules.nixos."internal/nix"
      ];
    };
in
{
  inherit flake;
}
