{ config, inputs, ... }:
let
  name = "feature/system/wsl";
in
{
  flake.modules.nixos.${name} =
    { ... }:
    let
      inherit (config.networking) hostName;
    in
    {
      imports = [
        inputs.nixos-wsl.nixosModules.default
        flake.modules.nixos."host/common"
      ];
      wsl = {
        enable = true;
        useWindowsDriver = true;
        startMenuLaunchers = true;
        defaultUser = hostConfig.owner.username;
        wslConf.automount.root = "/mnt";
        wslConf.network.hostname = hostName;
      };

      # disable default boot
      boot.loader = {
        systemd-boot.enable = lib.mkForce false;
        efi.canTouchEfiVariables = lib.mkForce false;
      };
    };
}
