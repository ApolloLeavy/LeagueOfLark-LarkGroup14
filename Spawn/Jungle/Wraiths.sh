#!/bin/bash
if [ $Wtime -le $time ]
then
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
fi
done
echo You got "$(($experience+55+4*$level))" experience
experience=$(($experience+55+4*$level))
Wtime=$(($time+90))
. .exp.sh
else
echo The camp has not spawned yet
fi
