{ config, ... }:
{
  flake.modules.nixos."machine/Amanojaku" = 
    { ... }:
    {
      imports = [
        config.flake.modules.nixos."host/wsl"
      ];
      # home-manager = {
      #   users.aor.imports = [ config.flake.modules.homeManager."user/aor" ];
      #   extraSpecialArgs = {
      #       userConfig = config.flake.meta.user.aor;
      #   };
      # };
    };
}
