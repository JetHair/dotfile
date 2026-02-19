{ config, pkgs, ... }:

{
  home.packages = [ pkgs.iamb ];

  home.file.".config/iamb/config.toml".text = ''
    default_profile = "jethair"

    [profiles.jethair]
    user_id = "@jethair:matrix.org"

    [settings]
    log_level = "info"
    request_timeout = 120
    username_display = "username"
    user_gutter_width = 30
    typing_notice_display = true
    typing_notice_send = true
    read_receipt_display = true
    read_receipt_send = true
    reaction_display = true
    message_user_color = false

    [settings.notifications]
    enabled = true
    show_message = true
    via = "desktop"

    [settings.sort]
    rooms = ["favorite", "lowpriority", "unread", "name"]
    members = ["power", "id"]

    [settings.image_preview]
    protocol.type = "kitty"
    # size = { height = 10, width = 66 }

    [layout]
    style = "restore"

    [macros.normal]
    "gc" = ":chats<Enter>"
    "gr" = ":rooms<Enter>"
    "gs" = ":spaces<Enter>"
  '';
}
