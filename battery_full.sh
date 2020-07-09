while true; do
	status=`cat /sys/class/power_supply/BAT0/status`

	if [ $status = 'Full' ]
	then
		
		echo ''
	else
		echo ''
	fi
	sleep 1 &
	wait
done
