{
  flake.modules.homeManager."feature/tui" = 
    { lib, ... }:
    {
      programs.starship = {
        enable = true;
        enableBashIntegration = true;
        enableFishIntegration = true;
        settings = lib.importTOML ./catppuccin-powerline.toml;
      };
    };
}