{ config, ... }:
let
  flake = {
    modules.nixos."machine/Chimi" = {
      imports = [
        config.flake.modules.nixos."host/server"
        ./_specifics/hardware-configuration.nix
      ];
      nixpkgs.hostPlatform.system = "x86_64-linux";
    };

    meta.machine.Chimi = {
      name = "Chimi";
      owner = {
        name = "Aor-Li";
        username = "aor";
        email = "liyifeng0039@gmail.com";
      };
    };
  };
in
{
  inherit flake;
}
