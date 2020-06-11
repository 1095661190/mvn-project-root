#!/bin/bash


set -o nounset                              # Treat unset variables as an error
current_dir=$(cd $(dirname $0);pwd)
. $current_dir/common.sh

function usage(){
	echo "Usage: $0 start|stop|restart"
	exit 1
}

if [ "$#" -ne 1 ]
then
	usage
fi



case $1 in
	start)
		start
		;;
	stop)
		stop
		;;
	restart)
		restart
		;;
esac
