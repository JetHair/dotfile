{ pkgs }:
pkgs.writeShellScriptBin "copy" ''
  if pidof bemenu> /dev/null; then
      pkill bemenu
  fi
  selection=$(cliphist list | awk '{$1=""; print substr($0,2)}' | dmenu)
  cliphist list | grep -F "$selection" | cliphist decode | wl-copy
''
