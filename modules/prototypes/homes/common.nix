{ config, ... }:
let
  flake.modules.homeManager."home/common" =
    { options, lib, ... }:
    {
      imports = [
        config.flake.modules.homeManager."feature/system"
        config.flake.modules.homeManager."feature/nix"
        config.flake.modules.homeManager."feature/network"
      ];
    };
in
{
  inherit flake;
}
