{
  flake.modules.home."features/shell" = 
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