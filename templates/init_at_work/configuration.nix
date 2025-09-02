{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    <nixos-wsl/modules>
  ];

  wsl.enable = true;
  wsl.defaultUser = "aor";

  environment.systemPackages = with pkgs; [
    vim
    git
    wget
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
    "pipe-operators"
  ];

  nix.settings.substituters = [
    "https://mirror.sjtu.edu.cn/nix-channels/store"
    "https://mirrors.ustc.edu.cn/nix-channels/store"
    "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
  ];

  security.pki.certificateFiles = [
    ./certs/huawei_web_secure_internet_gateway.cer
  ];

  system.stateVersion = "24.11";
}
