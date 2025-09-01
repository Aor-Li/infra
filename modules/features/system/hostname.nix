{ ... }:
let
  name = "feature/system/hostname";
in
{
  flake.modules.nixos.${name} =
    {
      config,
      options,
      lib,
      ...
    }:
    {
      options.infra.${name}.name = lib.mkOption {
        type = lib.types.str;
        default = "nixos";
        description = "The hostname of the machine.";
      };

      config.networking.hostName = config.infra.${name}.name;
      config.wsl.wslConf.network.hostname = config.infra.${name}.name;
    };
}
