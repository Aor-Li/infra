{ config, ... }:
let
  flake.modules.homeManager."home/gamer" =
    { ... }:
    {
      imports = [ ];
    };
in
{
  inherit flake;
}
