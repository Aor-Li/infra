{
  flake.modules.homeManager."feature/shell" = 
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