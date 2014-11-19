simple-cdd
----------
Introduction:
We should make own debian-installer mirror to use latest daily builds of debian-installer.

wget -r -np -R *.log* http://d-i.debian.org/daily-images/amd64/daily/

simple-cdd expects directory structure like this:

    installer-amd64/current/images/cdrom/gtk/initrd.gz
    installer-amd64/current/images/cdrom/gtk/vmlinuz
    installer-amd64/current/images/cdrom/initrd.gz
    installer-amd64/current/images/cdrom/vmlinuz

so reproduce similar di directory structure.

Change simple-cdd-custom.conf custom_installer option.


Preparation:

install debian-cd from unstable(3.1.16)

remove console-tools from default profile

Run simple-cdd :

mkdir mycd && cd mycd

mkdir profiles

cp ../sdd-profiles/* profiles/

build-simple-cdd --conf ../simple-cdd-custom.conf --dist jessie
#build-simple-cdd  -p custom --do-mirror --dist jessie
