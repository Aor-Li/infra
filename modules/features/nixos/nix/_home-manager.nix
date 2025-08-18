{ inputs, ... }:
{
  flake.modules.nixos."feature/nix" = 
    { ... }:
    {
      imports = [
        inputs.home-manager.nixosModules.home-manager
      ];
    };
}