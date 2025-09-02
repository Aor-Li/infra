{ ... }:
let
  name = "feature/system/hostname";
in
{
  flake.modules.nixos.${name} =
    {
      config,
      options,
      lib,
      ...
    }:
    let
      isWSL = config.infra."feature/system/wsl".enable;
    in
    {
      options.infra.${name}.name = lib.mkOption {
        type = lib.types.str;
        default = "nixos";
        description = "The hostname of the machine.";
      };

      config = lib.mkMerge [
        { networking.hostName = config.infra.${name}.name; }

        (lib.mkIf isWSL {
          wsl.wslConf.network.hostname = config.infra.${name}.name;
        })
      ];
    };
}
