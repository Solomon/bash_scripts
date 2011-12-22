#!/bin/bash
if [ "$1" = "free" ]; then
	echo 'Freeing hosts...'
	sudo cp /etc/free_hosts /etc/hosts
	echo '[Done]'
elif [ "$1" = "block" ]; then
	echo 'Blocking hosts...'
	sudo cp /etc/blocked_hosts /etc/hosts
	echo '[Done]'
else
	echo "You can either free or block hosts"
	echo "Usage: "
	echo "	\$switch_hosts free"
	echo "	\$switch_hosts block"
fi
