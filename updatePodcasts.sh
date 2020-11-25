#!/bin/bash
# call this script from the crontab to update podcasts only if no other update is already running
NB_GPO=`ps aux | grep gpo | grep -v grep | wc -l`
echo $NB_GPO
if [ $NB_GPO -eq 0 ]
then 
	date > $HOME/gpodder-cron.log
	$HOME/gpodder/bin/gpo update 2>&1 >> $HOME/gpodder-cron.log
	$HOME/gpodder/bin/gpo download 2>&1 >> $HOME/gpodder-cron.log
	$HOME/gpodder/bin/gpo sync 2>&1 >> $HOME/gpodder-cron.log
else 
	date >> $HOME/gpodder-cron.log
	echo already running >>$HOME/gpodder-cron.log
fi
