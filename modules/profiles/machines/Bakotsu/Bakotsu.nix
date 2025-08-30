{ config, ... }:
let
  flake = {
    modules.nixos."machine/Bakotsu" = {
      imports = [
        ./_specifics/specifics.nix
        config.flake.modules.nixos."host/wsl"
      ];
      nixpkgs.hostPlatform.system = "x86_64-linux";
    };
    meta.machine.Bakotsu = {
      name = "Bakotsu";
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
