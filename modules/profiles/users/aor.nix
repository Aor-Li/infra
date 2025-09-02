{ config, ... }:
let
  flake = {
    modules.homeManager."user/aor" = {
      imports = [
        config.flake.modules.homeManager."home/common"
        config.flake.modules.homeManager."home/coder"
        config.flake.modules.homeManager."home/gamer"
      ];
    };

    meta.user.aor = {
      username = "aor";
      fullname = "Aor-Li";
      email = "liyifeng0039@gmail.com";
    };
  };
in
{
  inherit flake;
}
