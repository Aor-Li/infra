{
  flake.modules.nixos."feature/nix/basic" =
    { ... }:
    {
      nix.settings.experimental-features = [
        "nix-command"
        "flakes"
        "pipe-operators"
      ];
      nixpkgs.config.allowUnfree = true;
      nix.settings.trusted-users = [ "@wheel" ];
      environment.systemPackages = [ pkgs.nixfmt-rfc-style ];

      programs.nix-ld = {
        enable = true;
        package = pkgs.nix-ld-rs;
      };

      nix.settings.substituters = [
        "https://cuda-maintainers.cachix.org"
        "https://mirrors.sjtu.edu.cn/nix-channels/store"
        "https://mirrors.ustc.edu.cn/nix-channels/store"
        "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
      ];

      nix.settings.trusted-public-keys = [
        "cuda-maintainers.cachix.org-1:0dq3bujKpuEPMCX6U4WylrUDZ9JyUG0VpVZa7CNfq5E="
      ];
    };
}
