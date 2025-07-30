{ inputs, ... }:
{
  flake.modules.nixos."prototypes/wsl" =
    { config, ... }:
    {
      imports = [ inputs.nixos-wsl.nixosModules.default ];
      config.wsl.enable = true;
    };
}
