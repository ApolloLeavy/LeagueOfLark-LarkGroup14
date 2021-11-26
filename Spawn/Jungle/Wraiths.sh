#!/bin/bash
HP=$((20+7*$level))
AD=$((8+3*$level))
echo Wraiths HP:"$HP" AD:"$AD"
while [ $HP -gt 0 ]
do
echo Enter an Action: 
read action
if [ $action == "attack" -o $action == "Attack" ]
then
        HP=$(($HP-$ad))
        echo Wraiths HP:"$HP"
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
echo You got "$(($experience+55+4*$level))" experience
experience=$(($experience+55+4*$level))
gold=$(($gold+110))
Wtime=$(($time+90))
mv Wraiths.sh .Wraiths.sh
. ../.exp.sh
