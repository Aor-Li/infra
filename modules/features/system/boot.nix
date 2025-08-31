{ ... }:
let
  name = "feature/system/boot";
in
{
  flake.modules.nixos.${name} =
    { config, lib, ... }:
    {
      options.infra.${name}.enable = lib.mkEnableOption "Enable system boot (for physical machines)";

      config.boot.loader = lib.mkIf config.infra.${name}.enable {
        systemd-boot.enable = true;
        efi.canTouchEfiVariables = true;
      };
    };
}
