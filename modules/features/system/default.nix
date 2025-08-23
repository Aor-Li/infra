{ config, lib, ... }:
let
  name = "feature/system";
in
{
  flake.modules = {
    nixos.${name}.imports =
      config.flake.modules.nixos or { }
      |> lib.filterAttrs (name: _: lib.hasPrefix "${name}/" name)
      |> builtins.attrValues;
    homeManager.${name}.imports =
      config.flake.modules.homeManager or { }
      |> lib.filterAttrs (name: _: lib.hasPrefix "${name}/" name)
      |> builtins.attrValues;
  };
}
