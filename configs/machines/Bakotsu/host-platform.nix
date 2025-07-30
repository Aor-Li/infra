{
  flake.modules.nixos."machines/Amanojaku".imports = [
    {
      config.nixpkgs.hostPlatform = {
        system = "x86_64-linux";
      };
    }
  ];
}
