{ ... }:
let
  flake.modules.nixos."features/network/clash-meta" = {
    imports = [
      mohomo
    ];
  };

  mohomo =
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
