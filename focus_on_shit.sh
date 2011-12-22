#!/bin/bash
if [ "$1" = "end" ]; then
	echo 'Ending focus time...'
	sudo cp /etc/free_hosts /etc/hosts
	echo '[Done]'
elif [ "$1" = "start" ]; then
	echo 'Starting focus time...'
	sudo cp /etc/blocked_hosts /etc/hosts
	echo '[Done]'
else
	echo "You can either start or finish focus time"
	echo "Usage: "
	echo "	\$focus_on_shit.sh start"
	echo "	\$focus_on_shit.sh end"
fi
