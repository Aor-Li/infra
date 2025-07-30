{ inputs, ...}
let
  flake.modules.nixos."host/common".imports = [];
in
{
  inherit flake;
}