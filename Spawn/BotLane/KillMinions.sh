#!/bin/bash
if [ -f "EnemyBlazus.sh" -o -f "EnemySnadug.sh" ]
then
	if [ $topenemywave -gt 0 ]
	echo "You kill a minion but Snadug hit you for $((4+2*$level))"
	topenemywave=$(($topenemywave-1))
	time=$(($time+1))
	health=$(($health-8-4*$level))
else
	if [ $topenemywave -gt 0 ]
	echo "You kill a minion"
	topenemywave=$(($topenemywave-1))
        time=$(($time+1))
fi
