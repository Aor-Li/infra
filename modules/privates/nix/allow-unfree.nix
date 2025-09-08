{ ... }:
let
  name = "private/nix/allow-unfree";
in
{
  flake.modules.nixos.${name} =
    { pkgs, ... }:
    {
      nixpkgs.config.allowUnfree = true;
    };
}
