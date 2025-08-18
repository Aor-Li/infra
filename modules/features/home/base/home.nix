{
  flake.modules.homeManager."feature/base" = 
    { userConfig, ... }:
    {
      home.username = userConfig.username;
      home.homeDirectory = "/home/${userConfig.username}";
      home.stateVersion = "25.05";

      programs.home-manager.enable = true;
    };
}