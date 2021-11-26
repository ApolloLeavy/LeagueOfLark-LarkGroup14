#!/bin/bash
echo "Hey Jungler what are we going to do?"
echo "Attack the enemy champions (attack)"
echo "Clear the wave (wave)"
echo "Attack the tower (tower)"
echo "Go do something else (leave)"
read action
if [ "$action" == "attack" -a -f "EnemyBlazus.sh" -a -f "EnemySnadug.sh" ]
then
echo "Alright bro, i'll take Blazus you can get Snadug"
mv EnemyBlazus.sh .EnemyBlazus.sh
. EnemySnadug.sh
elif [ "$action" == "attack" -a -f "EnemyBlazus.sh" ]
then
echo "Alright bro, let's team up on Blazus"
. .TeamEnemyBlazus.sh
elif [ "$action" == "attack" -a -f "EnemySnadug.sh" ]
then
echo "Alright bro, let's team up on Snadug"
. .TeamEnemySnadug.sh
elif [ "$action" == "wave" ]
then
	if [ -f "EnemyBlazus.sh" -o -f "EnemySnadug.sh" ]
	then
		if [ -f ".KillMinions.sh" ]
		echo "They'll hit you if you do it now, just be careful"
		mv .KillMinions.sh KillMinions.sh
		else
		echo "They'll hit you if you do it now, just be careful"
		fi
	elif [ -f ".KillMinions.sh" ]
	echo "They are both gone we can clear it safely."
	mv .KillMinions.sh KillMinions.sh
	else
	echo "They are both gone we can clear it safely."
	fi
elif [ "$action" == "tower" ]
then
	if [ `-f "EnemyBlazus.sh" -o -f "EnemySnadug.sh"` -a `$topenemywave -gt 0 -o $topallywave == 0` ]
        then
	echo "We must push the wave and kill the enemies before we can hit the tower."
	elif [ $topenemywave -gt 0 -o $topallywave == 0 ]
	then
	echo "We must push the wave before we can hit the tower."
	elif [ -f "EnemyBlazus.sh" -o -f "EnemySnadug.sh" ]
        then
        echo "We must kill the enemies before we can hit the tower."
	else
	echo "Alright champ the tower is wide open"
	. BotTower.sh
	fi
elif [ "$action" == "leave" ]
then
return
else
echo "What did you say?(Enter a word inside the parentheses)"
. AllyGiradus.sh
fi
