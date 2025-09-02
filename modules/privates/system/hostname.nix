{ ... }:
let
  name = "private/system/hostname";
in
{
  flake.modules.nixos.${name} =
    { hostConfig, ... }:
    {
      networking.hostName = hostConfig.name;
    };
}
