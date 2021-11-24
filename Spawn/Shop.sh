#!/bin/bash
echo Welcome to the Shop Champion!
echo Select an item you would like to purchase
echo "Dagger      |500g |5ad"
echo "Shortsword  |1000g|12ad"
echo "Greatsword  |1500g|20ad"
echo "Battleaxe   |2000g|30ad"
echo "Exit"
echo "-------------------------"
while [ 1 -gt 0 ]
do
echo "You have $gold gold."
read input
if [ $input == "Dagger" -a $gold -ge 500 ]
then
ad=$(($ad+5))
echo "+5ad"
gold=$(($gold-500))
elif [ $input == "Shortsword" -a $gold -ge 1000 ]
then
ad=$(($ad+12))
echo "+12ad"
gold=$(($gold-1000))
elif [ $input == "Greatsword" -a $gold -ge 1500 ]
then
ad=$(($ad+20))
echo "+20ad"
gold=$(($gold-1500))
elif [ $input == "Battleaxe" -a $gold -ge 2000 ]
then
ad=$(($ad+30))
echo "+30ad"
gold=$(($gold-2000))
elif [ $input == "Exit"  ]
then
break
else
echo "Insufficient Gold"
fi
done
