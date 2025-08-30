{ config, ... }:
let
  flake = {
    modules.nixos."machine/Chimi" = {
      imports = [
        config.flake.modules.nixos."host/server"
        ./_specifics/hardware-configuration.nix
      ];
    };

    meta.machine.Chimi = {
      owner = {
        email = "liyifeng0039@gmail.com";
        name = "Aor-Li";
        username = "aor";
      };
    };
  };
in
{
  inherit flake;
}
