#!/bin/zsh

###############################################
#  V1.0 - 02/11/23
#  Thomas Eeles. 
#  SSHStatus - Will show if remote logon/SSH is open and running on the device 
#			   this should always say "OFF" - This needs to be run as SUDO
###############################################

ssh_status=$(/usr/sbin/systemsetup -getremotelogin | /usr/bin/awk '{ print $3 }')

echo "<result>$ssh_status</result>"