#!/bin/bash

# OPTIONS
# dark
# dark-tp
# light
# light-tp

# EXAMPLES
# ./launch.sh dark-tp
# sh ~/.config/polybar/material-square-polybar/launch.sh light

killall -wq polybar

if [[ "$1" == "dark" ]]
then
	polybar -c $HOME/.config/polybar/material-square-polybar/src/themes/dark.d/config.conf material-square-dark &
	polybar -c $HOME/.config/polybar/material-square-polybar/src/themes/dark.d/config.conf material-square-dark-quicklaunch &
elif [[ "$1" == "dark-tp" ]]
then
	polybar -c $HOME/.config/polybar/material-square-polybar/src/themes/dark-tp.d/config.conf material-square-dark-tp &
	polybar -c $HOME/.config/polybar/material-square-polybar/src/themes/dark-tp.d/config.conf material-square-dark-tp-quicklaunch &
elif [[ "$1" == "light" ]]
then
	polybar -c $HOME/.config/polybar/material-square-polybar/src/themes/light.d/config.conf material-square-light &
	polybar -c $HOME/.config/polybar/material-square-polybar/src/themes/light.d/config.conf material-square-light-quicklaunch &
elif [[ "$1" == "light-tp" ]]
then
	polybar -c $HOME/.config/polybar/material-square-polybar/src/themes/light-tp.d/config.conf material-square-light-tp &
	polybar -c $HOME/.config/polybar/material-square-polybar/src/themes/light-tp.d/config.conf material-square-light-tp-quicklaunch &
else
	echo "Invalid input (inputs: 'dark', 'dark-tp', 'light', 'light-tp')"
fi
