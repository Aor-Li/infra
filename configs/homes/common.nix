{ config, ... }:
{
  flake.modules.homeManager."home/common" = 
    { ... }: 
    {
      imports = [
        config.flake.modules.homeManager."feature/base"
      ];
    };
}
