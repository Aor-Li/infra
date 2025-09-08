{ ... }:
let
  name = "feature/daily/obsidian";
in
{
  flake.modules.homeManager.${name} =
    { ... }:
    {
      programs.obsidian = {
        enable = true;
      };
    };
}
