{
  flake.modules.homeManager."feature/shell" = 
    { ... }:
    let 
      aliases = {
        ns = "sudo nixos-rebuild switch --flake ~/configs/infra";
        hs = "sudo home-manager switch --flake ~/configs/nix-config";
      };
    in 
    {
      programs.bash.shellAliases = aliases;
      programs.fish.shellAliases = aliases;
    };
}