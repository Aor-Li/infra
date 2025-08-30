{ config, ... }:
{
  flake.modules.nixos."host/server" = {
    imports = [
      config.flake.modules.nixos."host/common"
      # do not sleep
      {
        systemd.sleep.extraConfig = ''
          [Sleep]
          AllowSuspend=no
          AllowHibernate=no
          AllowSuspendThenHibernate=no
          AllowHybridSleep=no
        '';
      }
    ];
  };
}
