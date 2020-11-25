#!/bin/bash
# in case connection to bluetooth speaker is not established, try to reconnect
# to device in .asoundrc (only one supported; lines commented must begin with #)
BT=`cat .asoundrc | grep -v ^# | grep device | cut -d '"' -f 2`
IS_CONNECTED=`bluetoothctl info $BT | grep "Connected: yes" | wc -l`
if [ $IS_CONNECTED -eq 0 ]
then
	echo Connecting to $BT
	bluetoothctl connect $BT
else
	echo Already connected to BT device
fi
