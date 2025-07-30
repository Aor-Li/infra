{ inputs, ... }:
{
  flake.modules.nixos."host/wsl" =
    { config, ... }:
    let
      inherit (config.networking) hostName;
    in
    {
      imports = [
        inputs.nixos-wsl.nixosModules.default
      ];
      wsl = {
        enable = true;
        startMenuLaunchers = true;
        wslConf.automount.root = "/mnt";
        wslConf.network.hostname = hostName;
      };
    };
}
