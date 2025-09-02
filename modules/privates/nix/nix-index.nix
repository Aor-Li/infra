{
  flake.modules.nixos."private/nix/nix-index" =
    { ... }:
    {
      programs.nix-index = {
        enable = true;
        enableBashIntegration = true;
        enableFishIntegration = true;
      };
    };
}
