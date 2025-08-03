{
  flake.modules.homeManager."feature/tui" = 
    { pkgs, userConfig, ... }:
    {
      programs.git = {
        enable = true;
        userName = userConfig.fullname;
        userEmail = userConfig.email;
      };

      programs.lazygit.enable = true;
    };
}