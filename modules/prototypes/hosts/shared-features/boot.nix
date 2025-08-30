{ config, ... }:
let
  bootModule =
    { ... }:
    {
      boot.loader = {
        systemd-boot.enable = true;
        efi.canTouchEfiVariables = true;
      };
    };

  flake.modules.nixos = {
    "host/server".imports = [ bootModule ];
    "host/desktop".imports = [ bootModule ];
  };
in
{
  inherit flake;
}
