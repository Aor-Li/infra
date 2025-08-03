{
  flake.modules.nixos."feature/nix" =
    { pkgs, ... }:
    {
      nix.settings.trusted-users = [ "@wheel" ];
    };
}
