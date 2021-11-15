#!/bin/bash
 gawk '$1 == "LeviathanSpawn:" { print $2 }' ../../Stats
