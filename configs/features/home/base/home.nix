{
  flake.modules.homeManager."home/base" = 
    { userConfig, ... }:
    {
      home.username = userConfig.username;
      home.homeDirectory = "/home/${userConfig.username}";
      home.stateVersion = "25.05";
    };
}