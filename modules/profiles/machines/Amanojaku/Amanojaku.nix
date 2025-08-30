{ config, ... }:
let
  flake = {
    modules.nixos."machine/Amanojaku" =
      { ... }:
      {
        imports = [
          config.flake.modules.nixos."host/wsl"
        ];
        nixpkgs.hostPlatform.system = "x86_64-linux";
      };
    meta.machine.Amanojaku = {
      name = "Amanojaku";
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
