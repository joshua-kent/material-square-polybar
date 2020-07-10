killall -q polybar
sleep 2
polybar -c $HOME/.config/polybar/material-square.d/material-square-dark.d/material-square-dark.conf material-square-dark &
polybar -c $HOME/.config/polybar/material-square.d/material-square-dark.d/material-square-dark.conf material-square-dark-quicklaunch &
