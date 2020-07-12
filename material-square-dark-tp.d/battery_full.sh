battery_full=98

while true; do
	curr_bat_cap=`cat /sys/class/power_supply/BAT0/capacity`

	if [ $curr_bat_cap -ge $battery_full ]
	then
		status=`cat /sys/class/power_supply/BAT0/status`

		if [ $status != 'Discharging' ]
		then
			echo ''
		else
			echo ''
		fi
	else
		echo ''
	fi

	sleep 1 &
	wait
done
