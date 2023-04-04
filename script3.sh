#!/bin/bash

read -p "Enter the name of service that you want to watch: " service_name

if systemctl is-active $service_name >/dev/null 2>&1; then
	echo "The service $service_name is already running"
	systemctl status $service_name
else
	echo "The service $service_name is not running."
	read -p "Do you want to run $service_name (Y/N): " confirm
	if [[ "$confirm" == [Yy]* ]]; then
		systemctl start $service_name
		echo "The $service_name service has been started"
		systemctl status $service_name
	else
		echo " The service was not started."
		systemctl status $service_name
	fi
fi
			

