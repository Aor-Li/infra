{ inputs, ... }:
{
  flake.modules.nixos."features.nix" =
    { ... }:
    {
      imports = [
        inputs.home-manager.nixosModules.home-manager
      ];
    };
}
