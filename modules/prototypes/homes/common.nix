{ config, ... }:
let
  name = "host/common";
in
{
  flake.modules.nixos.${name} = {
    imports = [
      config.flake.modules.nixos."feature/system"
    ];
  };
}
