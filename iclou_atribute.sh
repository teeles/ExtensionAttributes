#!/bin/zsh

###############################################
#  V1.0 - 02/11/23
#  Thomas Eeles. 
#  iCLoud Account Info - Extension Attribute that shows the iCloud account info of the logged in user
#   - Add this to Jamf
###############################################

## Get logged in user
loggedInUser=$(stat -f%Su /dev/console)
icloudaccount=$( defaults read /Users/$loggedInUser/Library/Preferences/MobileMeAccounts.plist Accounts | grep AccountID | cut -d '"' -f 2)
if [ -z "$icloudaccount" ] 
then
    echo "<result>No Accounts Signed In</result>"
else
    echo "<result>$icloudaccount</result>"
fi