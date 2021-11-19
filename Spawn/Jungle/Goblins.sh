#!/bin/bash
HP=$((30+10*$level))
AD=$((5+2*$level))
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
experience=$(($experience+45+5*$level))
. exp.sh
