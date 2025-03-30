#!/bin/sh

###############################################
#  V1.0 - 02/11/23
#  Thomas Eeles. 
#  MacBookYear - EA that will show the year the device was "made" by extracting it from the model name, 
#                for exmaple "MacBook Pro (16-inch, 2023)" would show "2023". This is handy for quickly finding older machines. 
###############################################

product_name=$(/usr/libexec/PlistBuddy -c 'print 0:product-name' /dev/stdin <<< "$(/usr/sbin/ioreg -ar -k product-name)")
year=$(echo "$product_name" | grep -oE '\b[0-9]{4}\b')

echo "<result>$year</result>"