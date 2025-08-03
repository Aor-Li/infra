{
  flake.modules.homeManager."feature/tui" = 
    { ... }: {
      programs.bash = {
        enable = true;
        initExtra = ''
          # call fish in interactive shell
          # fish
        '';
      };
    };
}