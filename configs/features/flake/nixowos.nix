{ inputs, ... }:
{
  flake.modules.nixos."feature/nix" =
    { ... }:
    {
      imports = [ inputs.nixowos.nixosModules.default ];
      nixowos.enable = true;
    };

  flake.modules.homeManager."feature/tui" =
    { ... }:
    {
      imports = [ inputs.nixowos.homeManagerModules.default ];
      nixowos = {
        enable = true;
        overlays.enable = true;
      };
      programs.fastfetch.enable = true;
    };
}
