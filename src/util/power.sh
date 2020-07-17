# OPTIONS:
# dark	dark theme
# tp	transparent

dark=0
tp=0

if [[ "$1" == "dark" ]]
then
	dark=1
elif [[ "$1" == "tp" ]]
then
	tp=1
fi

if [[ "$2" == "dark" ]]
then
	dark=1
elif [[ "$2" == "tp" ]]
then
	tp=1
fi


latest_pid=`pgrep -n polybar`
pid_info=`cat /proc/${latest_pid}/cmdline | tr -d '\0'`
if [[ $pid_info =~ "polybar/material-square.d/src/themes/material-square-" ]]
then
	if [[ $pid_info =~ ".confpower" ]]
	then
		running=1
	else
		running=0
	fi
else
	running=0
fi

if [[ $running == 0 ]]
then
	if [[ $dark == 0 ]]
	then
		if [[ $tp == 0 ]]
		then
			polybar -c ~/.config/polybar/material-square.d/src/themes/material-square-light.d/material-square-light.conf power
		else
			polybar -c ~/.config/polybar/material-square.d/src/themes/material-square-light-tp.d/material-square-light-tp.conf power
		fi
	else
		if [[ $tp == 0 ]]
		then
			polybar -c ~/.config/polybar/material-square.d/src/themes/material-square-dark.d/material-square-dark.conf power
		else
			polybar -c ~/.config/polybar/material-square.d/src/themes/material-square-dark-tp.d/material-square-dark-tp.conf power
		fi
	fi
fi

exit 0
