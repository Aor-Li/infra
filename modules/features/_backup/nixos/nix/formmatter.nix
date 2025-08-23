{
  flake.modules.nixos."feature/nix" = 
    { pkgs, ... }:
    {
      environment.systemPackages = [ pkgs.nixfmt-rfc-style ];
    };
}