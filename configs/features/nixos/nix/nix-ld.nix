{
  flake.modules.nixos."feature/nix" =
    { pkgs, ... }:
    {
      programs.nix-ld = {
        enable = true;
        package = pkgs.nix-ld-rs;
      };
    };
}
