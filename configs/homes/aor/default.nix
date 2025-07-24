{ config, pkgs, lib, inputs, ... }:
{
  # Home Manager configuration for user 'aor'
  
  home = {
    username = "aor";
    homeDirectory = "/home/aor";
    stateVersion = "24.05";
  };

  # User packages
  home.packages = with pkgs; [
    # Development tools
    git
    neovim
    tmux
    zsh
    
    # System utilities
    htop
    tree
    ripgrep
    fd
    bat
    
    # Network tools
    curl
    wget
    
    # Text processing
    jq
    yq
  ];

  # Git configuration
  programs.git = {
    enable = true;
    userName = "aor";
    userEmail = "aor@example.com";  # TODO: Update with actual email
    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = true;
    };
  };

  # Zsh configuration
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    
    shellAliases = {
      ll = "ls -la";
      la = "ls -la";
      grep = "rg";
      cat = "bat";
    };
  };

  # Direnv for development environments
  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;
}