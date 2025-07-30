{
  flake.modules.nixos."host/commom".imports = [
    {
      services.openssh = {
        enable = true;
        settings = {
          X11Forwarding = true;
          PermitRootLogin = "prohibit-password";
          PasswordAuthentication = true;
          PubkeyAuthentication = true;
        };
      };
    }
  ];
}
