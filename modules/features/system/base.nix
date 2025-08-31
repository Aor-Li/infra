{
  flake.modules.nixos."feature/system/base" =
    { pkgs, ... }:
    {
      environment.systemPackages = with pkgs; [
        vim
        git
        htop
        wget
      ];
      environment.variables.EDITOR = "vim";
      system.stateVersion = "25.11";
    };
}
