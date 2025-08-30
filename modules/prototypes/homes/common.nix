{ config, ... }:
let
  flake.modules.homeManager."home/common" =
    { options, lib, ... }:
    {
      # options under meta is passed to home-manager prototypes by userConfig
      # options.infra = lib.mkOption {
        # type = lib.types.attrsOf lib.types.anything;
        # default = { };
        # description = "Meta information for current home-manager configuration.";
      # };

      imports = [
        config.flake.modules.homeManager."feature/system"
      ];
    };
in
{
  inherit flake;
}
