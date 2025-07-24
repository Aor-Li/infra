{ inputs, ... }:
{
  # Define NixOS configurations for all machines
  flake.nixosConfigurations = {
    Bakotsu = inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        # Import host configurations
        ./hosts/common
        ./hosts/wsl
        
        # Import machine-specific configuration
        ./machines/Bakotsu/configuration.nix
        
        # Configure home-manager
        inputs.home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.aor = import ./homes/aor;
        }
      ];
      specialArgs = { inherit inputs; };
    };
    
    # Placeholder for Amanojaku - can be expanded later  
    # Amanojaku = inputs.nixpkgs.lib.nixosSystem {
    #   system = "x86_64-linux";
    #   modules = [
    #     ./hosts/common
    #     ./hosts/wsl
    #     ./machines/Amanojaku/configuration.nix
    #     inputs.home-manager.nixosModules.home-manager
    #     {
    #       home-manager.useGlobalPkgs = true;
    #       home-manager.useUserPackages = true;
    #       home-manager.users.aor = import ./homes/aor;
    #     }
    #   ];
    #   specialArgs = { inherit inputs; };
    # };
  };
}