#!/bin/bash
HP=$((20+7*$level))
AD=$((8+3*$level))
echo Wraiths HP:"$HP" AD:"$AD"
while [ $HP -gt 0 ]
do
echo Enter an Action: 
read action
if [ $action == "attack" ]
then
        HP=$(($HP-$ad))
        echo Wraiths HP:"$HP"
        health=$(($health-$AD))
        echo Your HP:  "$health"
fi
done
echo You got "$(($experience+55+4*$level))" experience
experience=$(($experience+55+4*$level))
. exp.sh

