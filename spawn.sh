#!/bin/bash
cd Spawn
export health=100
export ad=10
export gold=0
export level=1
export exp=0
export time=0
export leviathan=900
export outpost=200
export maxhealth=100
export topenemywave=6
export topallywave=6
export botenemywave=6
export botallywave=6
alias cd='time=$(($time+10)); 
$(if [ -f ".spawnCamps.sh" ] 
then
. .spawnCamps.sh
fi); 
cd'
export Gtime=60
export Ttime=60
export Wtime=60
