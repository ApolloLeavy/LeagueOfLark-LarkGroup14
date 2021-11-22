#!/bin/bash
HP=$((40+15*$level))
AD=$((4+1*$level))
echo Treants HP:"$HP" AD:"$AD"
while [ $HP -gt 0 ]
do
echo Enter an Action:
read action
if [ $action == "attack" ]
then
        HP=$(($HP-$ad))
        echo Treants HP:"$HP"
        health=$(($health-$AD))
        echo Your HP:  "$health"
fi
done
echo You got "$(($experience+35+7*$level))" experience
experience=$(($experience+35+7*$level))
. exp.sh

