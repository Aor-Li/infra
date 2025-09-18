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
        defaultSettings = {
          app = {
            showLineNumber = true;
            tabSize = 2;
          };

          corePlugins = [ ];
          communityPlugins = [
            "obsidian-style-settings"
          ];
        };

        vaults."~/obsidian-notes/coding" = {
          enable = true;
        };
      };

      # todo: currently obsidian is set in ui interface, and plugin install seems worked just fine.
    };
}
