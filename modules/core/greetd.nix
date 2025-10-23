{ pkgs
, username
, ...
}: {
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        user = username;
        command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd mango"; # start Mango with a TUI login manager
      };
    };
  };
}
