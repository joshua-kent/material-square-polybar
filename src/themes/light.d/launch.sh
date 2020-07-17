killall -q polybar
sleep 2
polybar -c $HOME/.config/polybar/material-square.d/src/themes/light.d/config.conf material-square-light &
polybar -c $HOME/.config/polybar/material-square.d/src/themes/light.d/config.conf material-square-light-quicklaunch &
