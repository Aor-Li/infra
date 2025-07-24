{ config, pkgs, lib, inputs, ... }:
{
  # Common host configuration shared by all machines
  
  # Basic system configuration
  system.stateVersion = "24.05";
  
  # Enable nix flakes
  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      auto-optimise-store = true;
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
    };
  };

  # Basic networking
  networking = {
    networkmanager.enable = true;
  };

  # System packages
  environment.systemPackages = with pkgs; [
    git
    vim
    curl
    wget
  ];
}