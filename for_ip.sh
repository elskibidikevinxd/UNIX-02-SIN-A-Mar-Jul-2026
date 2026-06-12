#!/bin/bash
for ip_address in "$@"; do
    ping -c 1 "${ip_address}"
    echo "Taking some action on IP address ${ip_address}"
done

#172.17.0.1
#10.0.10.56
#10.0.255.255