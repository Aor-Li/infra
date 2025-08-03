{
  flake.modules.nixos."feature/nix" = {
    nixpkgs.config.allowUnfree = true;
  };
}
