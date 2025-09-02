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

        environments.variables = {
          # todo: 移动到cargo相关设置
          CARGO_HTTP_CHECK_REVOKE = "false";
          CARGO_NET_GIT_FETCH_WITH_CLI = "true";
          GIT_SSL_NO_VERIFY = "1";
        };

        programs.lazygit.enable = true;
      };
  };
}
