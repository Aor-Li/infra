{ config, ... }:
let
  flake.modules.nixos."host/common" =
    { ... }:
    {
      imports = [
        config.flake.modules.nixos."feature/system"
        config.flake.modules.nixos."feature/nix"
        config.flake.modules.nixos."feature/ai"
      ];
    };
in
{
  inherit flake;
}
