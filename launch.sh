#!/bin/bash

# OPTIONS
# dark
# dark-tp
# light
# light-tp
# openbox

# EXAMPLES
# ./launch.sh dark-tp
# sh ~/.config/polybar/material-square-polybar/launch.sh light openbox

killall -wq polybar

if [[ "$1" == "dark" ]]
then
	polybar -c $HOME/.config/polybar/material-square-polybar/src/themes/dark.d/config.conf material-square-dark &
	if [[ "$2" == "openbox" ]]
	then
		polybar -c $HOME/.config/polybar/material-square-polybar/src/themes/dark.d/config.conf material-square-dark-quicklaunch &
	fi
elif [[ "$1" == "dark-tp" ]]
then
	polybar -c $HOME/.config/polybar/material-square-polybar/src/themes/dark-tp.d/config.conf material-square-dark-tp &
	if [[ "$2" == "openbox" ]]
	then
		polybar -c $HOME/.config/polybar/material-square-polybar/src/themes/dark-tp.d/config.conf material-square-dark-tp-quicklaunch &
	fi
elif [[ "$1" == "light" ]]
then
	polybar -c $HOME/.config/polybar/material-square-polybar/src/themes/light.d/config.conf material-square-light &
	if [[ "$2" == "openbox" ]]
	then
		polybar -c $HOME/.config/polybar/material-square-polybar/src/themes/light.d/config.conf material-square-light-quicklaunch &
	fi
elif [[ "$1" == "light-tp" ]]
then
	polybar -c $HOME/.config/polybar/material-square-polybar/src/themes/light-tp.d/config.conf material-square-light-tp &
	if [[ "$2" == "openbox" ]]
	then
		polybar -c $HOME/.config/polybar/material-square-polybar/src/themes/light-tp.d/config.conf material-square-light-tp-quicklaunch &
	fi
else
	echo "Invalid input (inputs: 'dark', 'dark-tp', 'light', 'light-tp')"
fi
