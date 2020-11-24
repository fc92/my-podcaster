#!/bin/bash
# call this script from the crontab to (re)start the podcaster automatically
NB_PODCASTER=`ps aux | grep gpo | grep -v grep | wc -l`
echo $NB_PODCASTER
if [ $NB_PODCASTER -eq 0 ]
then 
	date > $HOME/gpodder-cron.log
	$HOME/gpodder/bin/gpo update 2>&1 >> $HOME/gpodder-cron.log
	$HOME/gpodder/bin/gpo download 2>&1 >> $HOME/gpodder-cron.log
	$HOME/gpodder/bin/gpo sync 2>&1 >> $HOME/gpodder-cron.log
else 
	date >> $HOME/gpodder-cron.log
	echo already running >>$HOME/gpodder-cron.log
fi
