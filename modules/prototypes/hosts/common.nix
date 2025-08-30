{ config, ... }:
let
  flake.modules.nixos."host/common" =
    {
      options,
      lib,
      hostConfig,
      ...
    }:
    {
      # options under meta is passed to nixos prototypes by hostConfig
      # options.infra = lib.mkOption {
      # type = lib.types.attrsOf lib.types.anything;
      # default = { };
      # description = "Meta information for current nixos configuration.";
      # };

      imports = [
        config.flake.modules.nixos."feature/system"
      ];
      networking.hostName = hostConfig.name;
    };
in
{
  inherit flake;
}
