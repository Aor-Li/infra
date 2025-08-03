{
  flake.modules.home."features/shell" = 
    { pkgs, userConfig, ... }:
    {
      programs.git = {
        enable = true;
        userName = userConfig.fullname;
        userEmail = userConfig.email;
      };
    };
}