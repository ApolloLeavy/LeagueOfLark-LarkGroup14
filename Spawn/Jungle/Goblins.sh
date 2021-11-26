#!/bin/bash
HP=$((30+10*$level))
AD=$((5+2*$level))
echo Goblins HP:"$HP" AD:"$AD"
while [ $HP -gt 0 ]
do
echo Enter an Action: 
read action
if [ $action == "attack" -o $action == "Attack" ]
then
	HP=$(($HP-$ad))
	echo Goblins HP:"$HP"
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
experience=$(($experience+45+5*$level))
gold=$(($gold+100))
Gtime=$(($time+90))
mv Goblins.sh .Goblins.sh
. ../.exp.sh

