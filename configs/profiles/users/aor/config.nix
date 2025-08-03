{
  flake.moduels.home."user/aor" = 
    { ... }:
    {
      extraSpecialArgs = {
        userConfig = {
          username = "aor";
          fullname = "Aor-Li";
          email = "liyifeng0039@gmail.com";
        };
      };
    };
}