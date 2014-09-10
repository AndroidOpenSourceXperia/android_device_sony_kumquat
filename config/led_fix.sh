#!/system/bin/sh

if ! [ -e /data/lightservice.soc ]; then
	# the application you want to terminate after a while
	prog=/system/bin/illumination_service

	# run it in background
	${prog} &

	# wait...
	sleep 3

	# kill process
	kill %1

	chmod 622 /data/lightservice.soc
fi

