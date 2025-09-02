# This module defines the `flake.meta` option which set the overall options of our multi-machine multi-user infra.
{ lib, ... }:
{
  options.flake.meta = lib.mkOption {
    type = lib.types.anything;
  };
}
