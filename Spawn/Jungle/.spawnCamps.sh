#!/bin/bash
if [ $Gtime -le $time -a -f ".Goblins.sh" ]
then
mv .Goblins.sh Goblins.sh
fi
if [ $Ttime -le $time -a -f ".Treants.sh" ]
then
mv .Treants.sh Treants.sh
fi
if [ $Wtime -le $time -a -f ".Wraiths.sh" ]
then
mv .Wraiths.sh Wraiths.sh
fi

