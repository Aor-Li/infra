{ ... }:
let
  name = "feature/system/user";
in
{
  flake.modules = {
    nixos.${name} =
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
  };
}
