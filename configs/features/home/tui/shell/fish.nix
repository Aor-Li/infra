{
  flake.modules.home."features/shell" = 
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