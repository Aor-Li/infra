{
  flake.modules.homeManager."feature/shell" = 
    { pkgs, userConfig, ... }:
    {
      programs.git = {
        enable = true;
        userName = userConfig.fullname;
        userEmail = userConfig.email;
      };
    };
}