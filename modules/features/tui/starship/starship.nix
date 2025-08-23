{ ... }:
let
  name = "feature/tui/starship";
in
{
  flake.modules = {
    homeManager.${name} =
      { lib, ... }:
      {
        programs.starship = {
          enable = true;
          enableBashIntegration = true;
          enableFishIntegration = true;
          settings = lib.importTOML ./catppuccin-powerline.toml;
        };
      };
  };
}
