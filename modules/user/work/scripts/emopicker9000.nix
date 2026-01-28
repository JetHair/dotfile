{ pkgs }:
pkgs.writeShellScriptBin "emopicker9000" ''
  if pidof bemenu> /dev/null; then
    pkill bemenu
  fi

  # Get user selection via wofi from emoji file.
  chosen=$(cat $HOME/.config/.emoji |dmenu| awk '{print $1}')

  # Exit if none chosen.
  [ -z "$chosen" ] && exit

  printf "$chosen" | wl-copy
''
