{ ... }:
let
  name = "private/nix/nix-ld";
in
{
  flake.modules.nixos.${name} =
    { pkgs, ... }:
    {
      programs.nix-ld = {
        enable = true;
        package = pkgs.nix-ld-rs;
      };
    };
}
