{ ... }:
let
  name = "feature/claude-code";
in
{
  flake.modules = {
    nixos.${name} =
      { pkgs, ... }:
      {
        environment.systempackages = [
          pkgs.claude-code
        ];
      };
    homeManager.${name} = { ... }: { };
  };
}
