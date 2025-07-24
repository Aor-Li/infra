{ config, pkgs, lib, inputs, ... }:
{
  # Bakotsu-specific configuration
  # This is a desktop/win11/wsl2/nixos environment in company safe-pc
  
  # System configuration
  networking.hostName = "Bakotsu";
  
  # User configuration
  users.users.aor = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" "networkmanager" "docker" ];
    openssh.authorizedKeys.keys = [
      # TODO: Add SSH public keys here
    ];
  };

  # Enable sudo for wheel group
  security.sudo.wheelNeedsPassword = false;

  # WSL-specific tweaks for company environment
  wsl = {
    # Additional WSL configuration can go here
    wslConf.network.generateResolvConf = false;
  };

  # Development environment packages for company work
  environment.systemPackages = with pkgs; [
    # Basic development tools
    git
    vim
    curl
    wget
    
    # Company work tools
    docker
    docker-compose
    
    # System monitoring
    htop
    iotop
    nethogs
  ];

  # Enable Docker for development
  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
  };

  # Enable zsh system-wide
  programs.zsh.enable = true;
}