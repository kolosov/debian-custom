#!/bin/sh

SYSCONF_FILE="/etc/sysctl.conf"

echo "net.ipv6.conf.all.disable_ipv6 = 1" >> $SYSCONF_FILE
echo "net.ipv6.conf.default.disable_ipv6 = 1" >> $SYSCONF_FILE
echo "net.ipv6.conf.lo.disable_ipv6 = 1" >> $SYSCONF_FILE
echo "net.ipv6.conf.eth0.disable_ipv6 = 1" >> $SYSCONF_FILE


#enable internet only for vmware
#add special grop for vmware 
iptables -A OUTPUT -m owner --gid-owner wino -j DROP

#disable journal
/sbin/blkid |cut -d':' -f1| xargs tune4fs -O ^has_journal 

