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
          userName = userConfig.fullname;
          userEmail = userConfig.email;
          extraConfig = {
            http.sslVerify = false;
            https.sslVerify = false;
          };
        };

        programs.lazygit.enable = true;
      };
  };
}
