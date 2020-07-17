killall -q polybar
sleep 2
polybar -c $HOME/.config/polybar/material-square.d/src/themes/light-tp.d/config.conf material-square-light-tp &
polybar -c $HOME/.config/polybar/material-square.d/src/themes/light-tp.d/config.conf material-square-light-tp-quicklaunch &
