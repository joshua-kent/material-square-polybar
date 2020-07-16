killall -q polybar
sleep 2
polybar -c $HOME/.config/polybar/material-square.d/material-square-light.d/material-square-light.conf material-square-light &
polybar -c $HOME/.config/polybar/material-square.d/material-square-light.d/material-square-light.conf material-square-light-quicklaunch &
