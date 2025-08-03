{ config, ... }:
{
  flake.modules.home."user/aor" = {
    imports = [
      config.flake.modules.home."home/common"
      config.flake.modules.home."home/coder"
      config.flake.modules.home."home/gamer"
    ];
  };
}
