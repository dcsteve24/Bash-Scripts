#!/bin/bash

while [ "1" == "1" ]; do
        if [ -z "`ifconfig | grep tun0`" ]; then
                echo "tun0 interface was not found, restarting openvpn"
                systemctl restart openvpn
        fi
        sleep 90
done

# Add me to the crontab:
# @reboot root bash /root/scripts/connect_vpn.sh 2>&1 /root/scripts/connect_vpn.log


#Note to self: can use this mindset to ensure other services run as well. Awk the fail section and reboot the service if "failed"
#Takes little to no process power to have this check every 90 sec and ensures the service always up.
