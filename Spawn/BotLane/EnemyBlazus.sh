#!/bin/bash
HP=$((110+12*$level))
AD=$((8+2*$level))
echo "Blazus' HP:$HP AD:$AD"
while [ $HP -gt 0 ]
do
echo "Enter an Action:" 
read action
if [ $action == "attack" -o $action == "Attack" ]
then
	HP=$(($HP-$ad))
	echo "Blazus' HP:$HP"
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
echo "You got $(($experience+100+10*$level)) experience"
experience=$(($experience+100+10*$level))
gold=$(($gold+300))
mv EnemyBlazus.sh .EnemyBlazus.sh
. ../.exp.sh

