{
  flake.modules.nixos."feature/nix" =
    { ... }:
    {
      nix.settings.experimental-features = [
        "nix-command"
        "flakes"
        "pipe-operators"
      ];
    };
}
