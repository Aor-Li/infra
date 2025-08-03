{ config, ... }:
{
  flake.modules.nixos."features/base" =
    { ... }:
    {
      users.users.${config.flake.meta.owner.username} = {
        isNormalUser = true;
        initialPassword = "";
        extraGroups = [
          "wheel"
          "networkmanager"
        ];
      };
    };
}
