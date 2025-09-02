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
    {
      # settings for default user
      options.infra.${name}.defaultUser = lib.mkOption {
        type = lib.types.str;
        default = hostConfig.owner.username;
        description = "Default user for the system";
      };
      config = {
        # user setting for basic system
        users.users.${config.infra.${name}.defaultUser} = {
          isNormalUser = true;
          initialPassword = "";
          extraGroups = [
            "wheel"
            # todo: extra groups should be set in required feature module
            "networkmanager"
          ];
        };

        # user setting for wsl
        # Only set wsl.defaultUser if WSL is enabled
        # See: https://github.com/NixOS/nixpkgs/blob/master/nixos/modules/virtualisation/wsl.nix
        # and https://nixos.org/manual/nixos/stable/options.html#wsl.defaultUser
        # This prevents errors on non-WSL systems.
        # Use mkIf to conditionally set the option.
        (lib.mkIf config.wsl.enable {
          wsl.defaultUser = config.infra.${name}.defaultUser;
        })
      };

      # todo: add settings for other users
    };
}
