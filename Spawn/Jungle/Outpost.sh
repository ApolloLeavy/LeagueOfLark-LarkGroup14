#!/bin/bash
if [ $outpost -le $time ]
then
	echo "An enemy Champion appeared to stop you from taking the outpost"
HP=$((80+10*$level))
AD=$((10+5*$level))
echo Enemy HP:"$HP" AD:"$AD"
while [ $HP -gt 0 ]
do
echo Enter an Action:
read action
if [ $action == "attack" -o $action == "Attack" ]
then
        HP=$(($HP-$ad))
        echo Cain\'s HP:"$HP"
        health=$(($health-$AD))
        echo Your HP:  "$health"
        time=$(($time+1))
	if  [ $health -lt 0 ]
        then
        cd ..
        echo "You died, you must wait $(($level*3)) seconds to respawn"
        time=$(($time+$level*3))
        health=$maxhealth
        return
        fi
fi
done
echo You got "$(($experience+45+5*$level))" experience
experience=$(($experience+100))
time=$(($time+20))
outpost=$(($time+180))
echo "You have captured the outpost: +5ad +20hp"
health=$(($health+20))
maxhealth=$(($maxhealth+20))
ad=$(($ad+5))
. ../.exp.sh
else
echo The outpost is not availible to capture.
fi

