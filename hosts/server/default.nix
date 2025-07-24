{ config, pkgs, lib, inputs, ... }:
{
  # Server-specific configuration
  
  # Disable X server and desktop environment
  services.xserver.enable = false;
  
  # Enable SSH for remote access
  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
      PermitRootLogin = "no";
    };
  };

  # Server-oriented packages
  environment.systemPackages = with pkgs; [
    htop
    tmux
    rsync
    nginx
  ];

  # Firewall configuration
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 22 80 443 ];
  };
}