{
  flake.modules.nixos."features/nix" =
    { ... }:
    {
      nix.settings.experimental-features = [
        "nix-command"
        "flakes"
        "pipe-operators"
      ];
    };
}
