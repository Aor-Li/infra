{ ... }:
let
  name = "feature/system/user";
  in
{
  flake.modules.nixos.${name} =
    { config, options, lib, ... }:
    {
      options.infra.${name}.defaultUser = lib.mkOption {
        type = lib.types.str;
        default = "aor";
        description = "Default user for the system";
      };
      users.users.${config.infra.${name}.defaultUser} = {
        isNormalUser = true;
        initialPassword = "";
        extraGroups = [
          "wheel"
          "networkmanager"
        ];
      };
    };
  };
}
