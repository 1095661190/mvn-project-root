#!/bin/bash
current_dir=$(cd $(dirname $0);pwd)
home_dir=$(cd $current_dir/../;pwd)
lib_dir="$home_dir/lib"
config_dir="$home_dir/config"
log_dir=$home_dir/logs
cd $home_dir
env_file="$config_dir/env.sh"
if [ ! -f $env_file ]
then
	echo "no env file found: $env_file , exit"
	exit 3
fi

. $env_file
echo $env_file.properties


function get_classpath(){
	local classpath="$home_dir:$config_dir"
	for jar_file in $(find $lib_dir -type f -name "*.jar")
	do
		classpath+=":$jar_file"
	done
}



function start(){
	if [ ! -d "$log_dir" ]
	then
		mkdir -p $log_dir
	fi

	fi

	nohup java $JVM_OPTIONS -Dlog4j.configuration=file:$config_dir/log4j.xml   -cp "$(get_classpath)"  >> $log_dir/log.log 2>&1 &




}

function stop(){
	local running_pid=''

	if [ -n "ps aux|grep java|grep $running_pid" ]
	then
		log_log "running pid: $running_pid, kill"
		kill -9 $running_pid
	else
		log_log "no bi-data-proxy running, nothing to stop"
	fi
}

function restart_proxy(){
	stop
	sleep 8
	start
}

