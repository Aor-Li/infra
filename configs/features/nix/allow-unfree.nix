{
  flake.modules.nixos."features/nix" = {
    nixpkgs.config.allowUnfree = true;
  };
}
