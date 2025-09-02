{ ... }:
let
  name = "private/system/system-packages";
in
{
  flake.modules.nixos.${name} =
    { pkgs, ... }:
    {
      environment.systemPackages = with pkgs; [
        vim
        git
        htop
        wget
      ];
    };
}
