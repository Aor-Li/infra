{ config, ... }:
{
  flake.modules.homeManager."user/aor" = {
    imports = [
      config.flake.modules.homeManager."home/common"
      config.flake.modules.homeManager."home/coder"
      config.flake.modules.homeManager."home/gamer"
    ];
  };
}
