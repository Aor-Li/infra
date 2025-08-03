{ inputs, ... }:
{
  flake.modules.nixos."features.nix" =
    { ... }:
    {
      imports = [
        inputs.home-manager.nixosModules.home-manager
      ];
      home.stateVersion = "25.05";
    };
}
