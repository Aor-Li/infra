{ ... }:
let
  name = "feature/ai/claude-code";
in
{
  flake.modules = {
    nixos.${name} =
      { pkgs, ... }:
      {
        environment.systemPackages = [
          pkgs.claude-code
        ];
      };
    homeManager.${name} = { ... }: { };
  };
}
