{
  flake.modules.nixos."features/network" =
    { ... }:
    {
      networking.networkmanager.enable = true;
    };
}
