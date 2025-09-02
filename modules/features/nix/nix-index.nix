{
  flake.modules.nixos."feature/nix/nix-index" =
    { ... }:
    {
      programs.nix-index = {
        enable = true;
        enableBashIntegration = true;
        enableFishIntegration = true;
      };
    };
}
