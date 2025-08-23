{
  flake.modules.nixos."feature/network".imports = [
    {
      services.openssh = {
        enable = true;
        settings = {
          X11Forwarding = true;
          PasswordAuthentication = true;
          PubkeyAuthentication = true;
          PermitRootLogin = "prohibit-password";
        };
      };
    }
  ];
}
