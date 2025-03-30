#!/bin/sh

###############################################
#  V1.0 - 02/11/23
#  Thomas Eeles. 
#  LanSweeperAgent - The script will seach /Applications/Lansweeper for the LSAgent app. 
#        
###############################################

if [ -e /Applications/LansweeperAgent/LSAgent ]
then 
  echo "<result>True</result>"
else
  echo "<result>False</result>"
fi