#!/bin/bash
BT=00:19:F5:86:38:90
IS_CONNECTED=`bluetoothctl info $BT | grep "Connected: yes" | wc -l`
if [ $IS_CONNECTED -eq 0 ]
then
	bluetoothctl connect $BT
fi