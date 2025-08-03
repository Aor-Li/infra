{
  flake.modules.home."features/shell" = 
    { ... }: {
      programs.bash = {
        enable = true;
        initExtra = ''
          # call fish in interactive shell
          fish
        '';
      };
    };
}