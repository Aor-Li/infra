{
  flake.modules.nixos."features/nix" =
    { pkgs, ... }:
    {
      nix.settings.trusted-users = [ "@wheel" ];
    };
}
