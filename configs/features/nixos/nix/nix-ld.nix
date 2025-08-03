{
  flake.modules.nixos."features/nix" =
    { pkgs, ... }:
    {
      programs.nix-ld = {
        enable = true;
        package = pkgs.nix-ld-rs;
      };
    };
}
