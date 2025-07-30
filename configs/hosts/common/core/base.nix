{
  flake.modules.nixos."host/commom" =
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
