{ config, ... }:
let
  flake.modules.nixos."host/desktop" =
    { ... }:
    {
      imports = [
        config.flake.modules.nixos."host/common"
      ];
      infra."feature/system/boot".enable = true;
    };
in
{
  inherit flake;
}
