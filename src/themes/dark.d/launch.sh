killall -q polybar
sleep 2
polybar -c $HOME/.config/polybar/material-square.d/src/themes/dark.d/config.conf material-square-dark &
polybar -c $HOME/.config/polybar/material-square.d/src/themes/dark.d/config.conf material-square-dark-quicklaunch &
