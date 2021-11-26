#!/bin/bash
HP=$((70+7*$level))
AD=$((8+4*$level))
echo "Snadug's HP:$HP AD:$AD"
while [ $HP -gt 0 ]
do
echo "Enter an Action:" 
read action
if [ $action == "attack" -o $action == "Attack" ]
then
	HP=$(($HP-$ad))
	echo "You hit Snadug for $ad, Snadug HP:$HP"
	HP=$((HP-10-$level*2))
	echo "Giradus hit Snadug for $((10+$level*2)), Snadug HP:$HP"
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
echo "Giradus: Good work champion now we can clear wave and get tower safely"
mv EnemySnadug.sh .EnemySnadug.sh
. ../.exp.sh

