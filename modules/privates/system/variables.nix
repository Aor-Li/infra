# This module sets some essential system variables for global utilities.
{ ... }:
let
  name = "private/system/variables";
in
{
  flake.modules.nixos.${name} =
    { pkgs, ... }:
    {
      environment.variables.EDITOR = "vim";
    };
}
