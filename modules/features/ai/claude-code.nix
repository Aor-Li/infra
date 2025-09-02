{ inputs, ... }:
let
  name = "feature/ai/claude-code";
in
{
  flake.modules = {
    nixos.${name} =
      { pkgs, ... }:
      {
        environment.systemPackages = with inputs.nix-ai-tools.packages.${pkgs.system}; [
          claude-code
          claude-code-router
        ];
      };
    homeManager.${name} = { ... }: { };
  };
}
