{ inputs, ... }:
{
  flake.modules.nixos."prototypes/wsl" = {
    imports = [ inputs.nixos-wsl.nixosModules.default ];
  };
}
