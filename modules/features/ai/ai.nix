{ ... }:
let
  name = "feature/ai";
in
{
  flake.flakeModules.${name} = {
    imports = [ ./claude-code.nix ];
  };
}
