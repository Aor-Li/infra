{
  flake.modules.homeManager."feature/tui" = 
    { ... }: 
    {
      programs.fish = {
        enable = true;
        interactiveShellInit = ''
          set fish_greeting # Disable greeting
        '';
      };
    };
}