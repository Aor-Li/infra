{ ... }:
{
  flake.modules = {
    pts.hosts.common =
      { ... }:
      {
        flake.meta.info = "meta info.";
      };
  };
}
