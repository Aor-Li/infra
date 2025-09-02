{ ... }:
let
  name = "feature/tui/fish";
in
{
  flake.modules = {
    homeManager.${name} =
      { ... }:
      {
        programs.fish = {
          enable = true;
          interactiveShellInit = ''
            set fish_greeting # Disable greeting
          '';
        };
      };
  };
}
