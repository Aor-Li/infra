{ inputs, ... }:
let
  name = "feature/system/wsl";
in
{
  flake.modules.nixos.${name} =
    {
      config,
      options,
      lib,
      ...
    }:
    {
      imports = [
        inputs.nixos-wsl.nixosModules.default
      ];

      options.infra.${name}.enable =
        lib.mkEnableOption "Enable wsl boot (override boot for physical machines)";

      config = lib.mkIf config.infra.${name}.enable {
        wsl = {
          enable = true;
          useWindowsDriver = true;
          startMenuLaunchers = true;
          wslConf.automount.root = "/mnt";
          #defaultUser = defaultUser;
          #wslConf.network.hostname = hostName;
        };

        # disable default boot
        boot.loader = lib.mkIf config.infra.${name}.enable {
          systemd-boot.enable = lib.mkForce false;
          efi.canTouchEfiVariables = lib.mkForce false;
        };
      };
    };
}
