{
  flake.modules.nixos."internal/nix/nix-index" =
    { ... }:
    {
      programs.nix-index = {
        enable = true;
        enableBashIntegration = true;
        enableFishIntegration = true;
      };
    };
}
