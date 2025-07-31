{
  flake.modules.nixos."features/network" = 
    { ... }:
    {
      networking.networkmanager = true;
    };
}