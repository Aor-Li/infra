{ config, ... }:
{
  flake.modules.homeManager."home/coder" = {
    imports = [
      config.flake.modules.homeManager."feature/tui"
    ];
  };
}
