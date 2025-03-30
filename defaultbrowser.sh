#!/bin/bash

###############################################
#  V1.0 - 02/11/23
#  Thomas Eeles. 
#  defaultbrowser - Extention Atribute to show the dafult broswer for the current loged in user
#			   
###############################################

loggedInUser=$(stat -f%Su /dev/console)

defaultBrowser=$(plutil -p /Users/$loggedInUser/Library/Preferences/com.apple.LaunchServices/com.apple.launchservices.secure.plist | grep 'https' -b3 |awk 'NR==3 {split($4, arr, "\""); print arr[2]}')

echo "<result>$defaultBrowser</result>"