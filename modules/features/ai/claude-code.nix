{ ... }:
let
  name = "feature/ai/claude-code";
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
