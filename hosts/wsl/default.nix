{ config, pkgs, lib, inputs, ... }:
{
  # WSL-specific configuration
  imports = [
    inputs.nixos-wsl.nixosModules.wsl
  ];

  wsl = {
    enable = true;
    defaultUser = "aor";
    startMenuLaunchers = true;
    
    # Enable WSL integration
    interop.register = true;
    interop.includePath = true;
  };

  # WSL doesn't need most hardware configurations
  hardware.opengl.enable = false;
  
  # Disable services that don't work well in WSL
  services = {
    resolved.enable = false;
    timesyncd.enable = false;
  };

  # Use systemd in WSL
  systemd.services.systemd-udevd.enable = false;
  systemd.services.NetworkManager-wait-online.enable = false;
}