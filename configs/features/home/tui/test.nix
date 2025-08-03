{
  flake.modules.homeManager."feature/tui" = 
    { pkgs, ... }:
    {
     programs.fd.enable = true;
     programs.fzf.enable = true;
    };
}