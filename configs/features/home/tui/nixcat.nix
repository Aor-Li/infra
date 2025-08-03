{ inputs, ... }:
{
  flake.modules.homeManager."feature/tui" = 
    { config, ... }:
    {
      imports = [ inputs.lazyvim.homeModules.default ];
      nvim.enable = true;
    };
}