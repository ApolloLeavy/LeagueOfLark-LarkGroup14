#!/bin/bash
var=`gawk '$1 == "LeviathanSpawn:" { print $2 }' ../../Stats`
