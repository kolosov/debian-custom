0 Limitation
============
0.1 Arch: amd64

0.2 DE: Mate

0.3 Autmatic(by scripts) or manual installation

0.4 Debian version wheezy(current stable) or testing( jessie expected at spring of 2015) Only stable

0.5 system partiotion size: manual

0.6 home partiotion size: manual

0.7 container (only for home???, only one?) partition (encryption method, passphrase? same for all installation or ask it?) manual installation

0.8 Internet available during install process(overvise all packages should be on CD) offline installation, all packages on CD

1 Installation (Autoinstall)
============================
1.1 Prepare home partition with size 500MB (400MB + 100MB for what?)

1.2 Prepare truecrypt --- install dm-crypt

1.3 Install virtual machine

1.4 Disable ipv6



2 Additional scripts
=====================
2.1 Script 0
------------

2.1.1 Change MAC, hostname, intertnet over vpn only, disable wifi, 

2.1.2 setup NAT??? for what?
 log to /dev/null ? remove old logs or send all new logs from now to /dev/null? (syslog config)
 cache vse v ram?
 disable journaling??? for FS?

2.2 Script 1 (switching system off)
------------
2.2.1 Power off VM, 

2.2.2 disable internet(means disable vpn?), disable some dmcrypt??? how to know which one?, 
finishing all useless process(which?) ignore unsaved files, leave only ones what we will need later(script 4), fast log deletion(what means??), fast free space/RAM cleaning(what?), next deeply cleaning? If it means replace RAM by zero, the system reboot is nessesary.

2.2.3 Difference between script 1 and 2?

2.3 Script 3
------------
2.3.1 Save pathes and md5 of files(which files?), install system?, save all to other disk/partiotion(just copy or tar backup)

2.4 Script 4
------------
2.4.1 Check md5 for all files, and reports about changed(type of report? Just html page?)

2.5 Script 5
------------
Disk format(what disk?? Current with system? What ID is our own?)


2.6 Script 6 (not needed)
------------

Simple GUI app
Button 1: start script 1,4,5 (all script must me executed?)
Button 2: start script 2,5 





