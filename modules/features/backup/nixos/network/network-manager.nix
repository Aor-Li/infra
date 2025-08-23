{
  flake.modules.nixos."feature/network" =
    { ... }:
    {
      networking.networkmanager.enable = true;
    };
}
