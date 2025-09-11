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
      # todo: currently obsidian is set in ui interface, and plugin install seems worked just fine.
    };
}
