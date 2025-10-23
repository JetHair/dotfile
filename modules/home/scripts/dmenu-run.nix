{ pkgs }:
pkgs.writeShellScriptBin "dmenu-run" ''
  if pidof bemenu> /dev/null; then
    pkill bemenu
  fi
  DEFAULT_OPTS='-l 10 -p "" -P "❯" --cw 1 --nb "#000000" --ab "#000000" --fb "#000000" --hb "#000000" --hf "#cba6f7" --fn "JetBrainsMono Nerd" -W 0.2'
  eval bemenu-run $DEFAULT_OPTS "$@"
''
