#!/bin/bash
gawk '$1 == "HP:" {print $2}' goblins.txt
gawk '$1 == "AD:" {$2}' goblins.txt
echo Goblins HP:"$hp" AD:"$ad"

