{ pkgs }:
pkgs.writeShellScriptBin "pmenu" ''
  options="Exit\nLock\nPower Off\nRestart\nSuspend\nHibernate"
  choice=$(echo -e "$options" | dmenu -W 0.2 -i)

  case "$choice" in
      "Exit")
          mmsg -d quit
          ;;
      "Lock")
          swaylock
          ;;
      "Power Off")
          systemctl poweroff
          ;;
      "Restart")
          systemctl reboot
          ;;
      "Suspend")
          systemctl suspend
          ;;
      "Hibernate")
          systemctl hibernate
          ;;
  esac
''
