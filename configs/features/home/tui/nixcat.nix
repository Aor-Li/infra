{ inputs, ... }:
{
  flake.modules.home."features/tui/nvim" = 
    { config, ... }:
    {
      imports = [ inputs.lazyvim.homeModules.default ];
      nvim.enable = true;
    };
}