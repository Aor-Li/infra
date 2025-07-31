{
  flake.modules.nixos."features/base" =
    { pkgs, ... }:
    {
      environment.systemPackages = with pkgs; [
        vim
        htop
        wget
      ];
      environment.variables.EDITOR = "vim";
    };
}
