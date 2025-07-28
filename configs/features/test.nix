{ inputs, ... }:
{
  flake.modules.nixos."features/test" =
    { ... }:
    {
      config.flake.meta.info.test = "test_info";
    };
}
