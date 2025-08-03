{ inputs, ... }:
{
  flake.modules.homeManager."feature/tui/nvim" = 
    { config, ... }:
    {
      imports = [ inputs.lazyvim.homeModules.default ];
      nvim.enable = true;
    };
}