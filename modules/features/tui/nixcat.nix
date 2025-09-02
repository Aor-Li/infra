{ inputs, ... }:
let
  name = "feature/tui/nixcat";
in
{
  flake.modules = {
    homeManager.${name} =
      { config, ... }:
      {
        imports = [ inputs.lazyvim.homeModules.default ];
        nvim.enable = true;
      };
  };
}
