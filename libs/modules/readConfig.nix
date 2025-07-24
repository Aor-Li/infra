# Module that implements a function to read all files in a directory to a list
{ self, ... }:
{
  flake = {
    readConfigList =
      dir:
      let
        configItms = builtins.readDir dir;
        configDirs = builtins.filterAttrs (name: type: type == "directory") configItems;
        configNames = builtins.attrNames configDirs;
      in
      configNames;

    readConfigFiles =
      dir:
      let
        configNames = readConfigList dir;
        configFiles = builtins.map (
          configName: "${toString dir}/${configName}/configuration.nix"
        ) readConfigNames;
      in
      configFiles;
  };
}
