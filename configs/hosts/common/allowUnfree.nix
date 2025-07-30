{
  flake.modules.nixos."host/common" = {
    nixpkgs.config.allowUnfree = true;
  };
}
