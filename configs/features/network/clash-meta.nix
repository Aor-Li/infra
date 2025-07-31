{ ... }:
let
  flake.modules.nixos."features/network/clash-meta" = {
    imports = [
      clash-meta
    ];
  };

  clash-meta =
    { pkgs, ... }:
    {
      # add clash-meta to the system packages
      environment.systemPackages = with pkgs; [
        clash-meta
      ];
    };
in
{
  inherit flake;
}
