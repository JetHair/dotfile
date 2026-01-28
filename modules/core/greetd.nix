{
  pkgs,
  homeuser,
  ...
}:
{
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        user = homeuser;
        command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd mango"; # start Mango with a TUI login manager
      };
    };
  };
}
