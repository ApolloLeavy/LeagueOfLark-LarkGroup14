#!/bin/bash
HP=$((90+14*$level))
AD=$((7+3*$level))
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
fi
done
echo You got "$(($experience+70+5*$level))" experience
experience=$(($experience+70+5*$level))
. ../.exp.sh

