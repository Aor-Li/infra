{ config, ... }:
{
  flake.modules.nixos."machine/Amanojaku" = {
    imports = [
      config.flake.modules.nixos."host/wsl"
      {
        nixpkgs.hostPlatform.system = "x86_64-linux";
        system.stateVersion = "25.11";
        wsl.defaultUser = "aor";
      }
    ];
  };
}
