#!/bin/bash
# call this script from the crontab to (re)start the podcaster automatically
NB_PODCASTER=`ps aux | grep "podcaster.py" | grep -v grep | wc -l`
echo $NB_PODCASTER
if [ $NB_PODCASTER -eq 0 ]
then 
	/bin/date >$HOME/podcaster-age.log
	/usr/bin/python3 -u $HOME/podcaster.py 2>&1 >$HOME/podcaster.log &
else 
	echo ok>>$HOME/podcaster-age.log
fi
