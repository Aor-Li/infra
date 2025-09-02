{ ... }:
let
  name = "private/system/version";
in
{
  flake.modules.nixos.${name} =
    { ... }:
    {
      system.stateVersion = "25.11";
    };
}
