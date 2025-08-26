{ config, ... }:
{
  flake.modules.nixos."machine/Bakotsu" = {
    imports = [
      ./_specifics/specifics.nix
      config.flake.modules.nixos."host/wsl"
    ];
    nixpkgs.hostPlatform.system = "x86_64-linux";
  };
}
