{ ... }:
let
  name = "feature/system/user";
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
      options.infra.${name}.defaultUser = lib.mkOption {
        type = lib.types.str;
        default = "aor";
        description = "Default user for the system";
      };

      config.users.users.${config.infra.${name}.defaultUser} = {
        isNormalUser = true;
        initialPassword = "";
        extraGroups = [
          "wheel"
          # todo: extra groups should be set in required feature module
          "networkmanager"
        ];
      };
    };

}
