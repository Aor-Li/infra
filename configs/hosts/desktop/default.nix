{ config, pkgs, lib, inputs, ... }:
{
  # Desktop-specific configuration
  
  # Enable graphical environment
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  # Enable sound
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Enable bluetooth
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  # Enable printing
  services.printing.enable = true;

  # Desktop applications
  environment.systemPackages = with pkgs; [
    firefox
    vscode
    terminator
  ];

  # Enable flatpak for additional applications
  services.flatpak.enable = true;
}