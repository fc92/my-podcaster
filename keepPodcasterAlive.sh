#!/bin/bash
# call this script from the crontab to (re)start the podcaster automatically
# TO DO: remove static user
NB_PODCASTER=`ps aux | grep "podcaster.py" | grep -v grep | wc -l`
echo $NB_PODCASTER
if [ $NB_PODCASTER -eq 0 ]
then 
	{
		/usr/bin/python3 /home/f/podcaster.py &
	} 2>&1 > /home/f/podcaster.log
	date>/home/f/podcaster-age.log
else 
	echo ok>>/home/f/podcaster-age.log
fi
