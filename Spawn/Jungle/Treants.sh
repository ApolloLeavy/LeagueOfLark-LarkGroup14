#!/bin/bash
if [ $Ttime -le $time ]
then
HP=$((40+15*$level))
AD=$((4+1*$level))
echo Treants HP:"$HP" AD:"$AD"
while [ $HP -gt 0 ]
do
echo Enter an Action:
read action
if [ $action == "attack" -o $action == "Attack" ]
then
        HP=$(($HP-$ad))
        echo Treants HP:"$HP"
        health=$(($health-$AD))
        echo Your HP:  "$health"
	time=$(($time+1))
fi
done
echo You got "$(($experience+35+7*$level))" experience
experience=$(($experience+35+7*$level))
Ttime=$(($time+90))
. .exp.sh
else
echo The camp has not spawned yet
fi
