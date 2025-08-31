{ ... }:
let
  name = "feature/system/default-user";
in
{
  flake.modules.nixos.${name} =
    {
      config,
      lib,
      hostConfig,
      ...
    }:
    {
      options.infra.${name}.name = lib.mkOption {
        type = lib.types.str;
        default = hostConfig.owner.username;
        description = "Default user for the system";
      };
      config.users.users.${config.infra.${name}.name}.isNormalUser = true;
    };
}
