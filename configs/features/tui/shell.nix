{
  flake.modules.nixos."features/shell" = 
    { ... }: {
      imports = [
        # bash
        # fish
      ];
    };
  
  flake.modules.home."features/shell" = 
    { ... }:
    {

    };
}