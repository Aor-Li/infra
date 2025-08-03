{ config, ... }:
{
  flake.modules.nixos."feature/base" =
    { hostConfig, ... }:
    {
      users.users.${hostConfig.owner.username} = {
        isNormalUser = true;
        initialPassword = "";
        extraGroups = [
          "wheel"
          "networkmanager"
        ];
      };
    };
}
