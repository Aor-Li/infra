{ config, inputs, ... }:
let
  inherit (config) flake;
in
{
  flake.modules.nixos."host/wsl" =
    { config, lib, hostConfig, ... }:
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
