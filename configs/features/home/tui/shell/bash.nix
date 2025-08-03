{
  flake.modules.homeManager."feature/shell" = 
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