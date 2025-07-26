{ inputs, lib, ... }:
let
  flake.meta.host = {
    name = "Amanojaku";
    type = "wsl";
    system = "x86_64-linux";
    defaultUser = "aor";
  };

  inherit (flake.meta) host;
  inherit (flake.meta.host) name;
  inherit (inputs.self.lib) mkNixos;

  flake.nixosConfigurations.${name} = mkNixos host;
in
{
  inherit flake;
}
