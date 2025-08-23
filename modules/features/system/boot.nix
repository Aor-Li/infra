{
  flake.modules.nixos."feature/system/boot" =
    { ... }:
    {
      boot.loader = {
        systemd-boot.enable = true;
        efi.canTouchEfiVariables = true;
      };
    };
}
