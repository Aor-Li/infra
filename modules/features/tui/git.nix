{ ... }:
let
  name = "feature/tui/git";
in
{
  flake.modules = {
    homeManager.${name} =
      { pkgs, userConfig, ... }:
      {
        programs.git = {
          enable = true;
          extraConfig = {
            user.name = userConfig.fullname;
            user.email = userConfig.email;
            http.sslVerify = false;
            https.sslVerify = false;
          };
        };

        programs.lazygit.enable = true;
      };
  };
}
