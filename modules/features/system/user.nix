{ ... }:
let
  name = "feature/system/user";
in
{
  flake.modules.nixos.${name} =
    {
      config,
      lib,
      hostConfig,
      ...
    }:
    let
      isWSL = config.infra."feature/system/wsl".enable;
    in
    {
      # settings for default user
      options.infra.${name}.defaultUser = lib.mkOption {
        type = lib.types.str;
        default = hostConfig.owner.username;
        description = "Default user for the system";
      };
      config = lib.mkMerge [
        # user setting for basic system
        {
          users.users.${config.infra.${name}.defaultUser} = {
            isNormalUser = true;
            initialPassword = "";
            extraGroups = [
              "wheel"
              # todo: extra groups should be set in required feature module
              "networkmanager"
            ];
          };
        }

        # user setting for WSL
        (lib.mkIf isWSL {
          wsl.defaultUser = config.infra.${name}.defaultUser;
        })

      ];

      # todo: add settings for other users
    };
}
