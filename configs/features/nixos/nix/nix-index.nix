{
  flake.modules.nixos."feature/nix" = 
    { ... }:
    {
      programs.nix-index = {
        enable = true;
        enableBashIntegration = true;
        enableFishIntegration = true;
      };
    };
}