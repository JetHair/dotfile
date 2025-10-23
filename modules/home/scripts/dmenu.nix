{ pkgs }:
pkgs.writeShellScriptBin "dmenu" ''
  if pidof bemenu> /dev/null; then
    pkill bemenu
  fi

  DEFAULT_OPTS='-l 10 -p "" -P "❯" --cw 1 --nb "#000000" --ab "#000000" --fb "#000000" --hb "#000000" --hf "#cba6f7" --fn "JetBrainsMono Nerd"'

  eval bemenu $DEFAULT_OPTS "$@"
''
