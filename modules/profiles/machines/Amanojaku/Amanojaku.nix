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
      description = "Amanojaku is a wsl nixos system on my win11 pc with nvdia gpu.";
      type = "wsl";
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
