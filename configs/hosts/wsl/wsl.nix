{ inputs, ... }:
{
  flake.modules.nixos."host/wsl" =
    { config, ... }:
    {
      imports = [
        inputs.nixos-wsl.nixosModules.default
      ];
      config.wsl.enable = true;
    };
}
