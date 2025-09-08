{ config, ... }:
let
  flake.modules.homeManager."home/learner" =
    { options, lib, ... }:
    {
      imports = [
        config.flake.modules.homeManager."feature/learn"
      ];
    };
in
{
  inherit flake;
}
