{
  flake.modules.nixos."feature/nix" =
    { ... }:
    {
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
