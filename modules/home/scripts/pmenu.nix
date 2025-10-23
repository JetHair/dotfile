{ pkgs }:
pkgs.writeShellScriptBin "pmenu" ''
  options="Lock\nPower Off\nRestart\nSuspend\nHibernate"
  choice=$(echo -e "$options" | dmenu -W 0.2 -i)

  case "$choice" in
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
