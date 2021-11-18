#!/bin/bash
HP=$((40*$level))
AD=$((5*$level))
echo Goblins HP:"$HP" AD:"$AD"
while [ $HP -gt 0 ]
do
read action
if [ $action == "attack" ]
then
	HP=$(($HP-$ad))
	echo Goblins HP:"$HP"
	health=$(($health-$AD))
	echo Your HP:  "$health"
fi
done
export health=$health
if [ $level -lt 5 ]
exp=$(($experience
