#!/bin/sh
while [ true ] ; do
	PWRLVL=$(cat /sys/class/power_supply/BAT1/capacity)
	if [ $PWRLVL -le 50 ] ; then
            exec notify-send "Battery is at 50%!!";
            #break;
	elif [ $PWRLVL -le 35 ] ; then
            exec notify-send "Battery is at 35%!!";
            #break;
        elif [ $PWRLVL -le 15 ] ; then
            exec notify-send "Battery is at 15%!!";
            #break;
        else
            sleep 15s;
        fi
done
