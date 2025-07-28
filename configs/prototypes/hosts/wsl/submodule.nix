{ inputs, ... }:
let
  inherit (inputs) flake;
in
{
  flake.modules.nixos.wsl = {
    imports = [
      inputs.self.modules.nixos.test
    ];
  };
}
