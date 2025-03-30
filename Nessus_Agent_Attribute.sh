#!/bin/sh

###############################################
#  V1.0 - 02/11/23
#  Thomas Eeles. 
#  NessusAgent - EA to check the Nessus Agent status
# 				The script will check that the Nessus agent is prsent on the OS
# 				If the scipt is on the OS it will check that the agent is running/ 
# 				If the agent is on the OS it will check the version.
# 				The script will report the results.
#			   
###############################################

if [ -e /Library/NessusAgent/run/sbin/nessuscli ]; then
    NessusAgentVersion=$(/Library/NessusAgent/run/sbin/nessuscli -v | head -n 1 | awk -F '[\)\[]' '{print $2}')
    NessusAgentRunning=$(sudo launchctl list com.tenablesecurity.nessusagent | grep -c PID)

    if [ $NessusAgentRunning -gt 0 ]; then
		echo "<result>Not Running $NessusAgentVersion</result>"
	else
		echo "<result>Running $NessusAgentVersion</result>"
	fi
else 
 echo "<result>Not Installed</result>"
fi