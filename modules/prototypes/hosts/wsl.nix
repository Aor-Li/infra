{ config, ... }:
let
  flake.modules.nixos."host/wsl" =
    { ... }:
    {
      imports = [
        config.flake.modules.nixos."host/common"
      ];
      infra."feature/system/wsl".enable = true;
    };
in
{
  inherit flake;
}
