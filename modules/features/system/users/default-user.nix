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
      config = {
        # user setting for basic system
        users.users.${config.infra.${name}.name} = {
          isNormalUser = true;
          initialPassword = "";
          extraGroups = [
            "wheel"
            # todo: extra groups should be set in required feature module
            "networkmanager"
          ];
        };

        # user setting for wsl
        wsl.defaultUser = config.infra.${name}.name;
      };
    };
}
