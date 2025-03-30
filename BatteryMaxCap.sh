#!/bin/sh

###############################################
#  V1.0 - 02/11/23
#  Thomas Eeles. 
#  MaxBatCap - The script will check and report the battery max capacity
#			   
###############################################

MaxCap=$(system_profiler SPPowerDataType | grep -E "Maximum Capacity" | awk '{print $3}' | tr -d '%')


echo "<result>$MaxCap</result>"