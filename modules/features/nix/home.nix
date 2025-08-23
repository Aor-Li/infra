{ ... }:
let
  name = "feature/home-manager";
in
{
  flake.modules = {
    homeManager.${name} =
      { userConfig, ... }:
      {
        programs.home-manager.enable = true;
        home.username = userConfig.username;
        home.homeDirectory = "/home/${userConfig.username}";
        home.stateVersion = "25.05";
      };
  };
}
