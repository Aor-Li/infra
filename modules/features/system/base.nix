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

      nixpkgs.hostPlatform.system = "x86_64-linux";
      system.stateVersion = "25.11";
    };
}
