#!/bin/bash
if [ $Gtime -le $time -a -f "Jungle/.Goblins.sh" ]
then
mv Jungle/.Goblins.sh Jungle/Goblins.sh
fi
if [ $Ttime -le $time -a -f "Jungle/.Treants.sh" ]
then
mv Jungle/.Treants.sh Jungle/Treants.sh
fi
if [ $Wtime -le $time -a -f "Jungle/.Wraiths.sh" ]
then
mv Jungle/.Wraiths.sh Jungle/Wraiths.sh
fi

