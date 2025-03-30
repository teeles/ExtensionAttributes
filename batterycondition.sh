#!/bin/sh

###############################################
#  V1.0 - 02/11/23
#  Thomas Eeles. 
#  BatteryCondition - The script will check and report the battery health status 
#			   
###############################################

condition=$(system_profiler SPPowerDataType | grep -E "Condition" | awk '{print $2}')

echo "<result>$condition</result>"