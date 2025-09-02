{ ... }:
let
  name = "internal/nix/format";
in
{
  flake.modules.nixos.${name} =
    { pkgs, ... }:
    {
      environment.systemPackages = [ pkgs.nixfmt ]; # pkgs.nixfmt-rfc-style
    };
}
