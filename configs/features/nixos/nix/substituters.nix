{
  flake.modules.nixos."feature/nix" =
    { ... }:
    {
      nix.settings.substituters = [
        "https://mirrors.sjtu.edu.cn/nix-channels/store"
        "https://mirrors.ustc.edu.cn/nix-channels/store"
        "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
      ];
    };
}
