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

create script archive:

    tar cf opt.tar ../../scripts
    gzip opt.tar


Run simple-cdd :

    mkdir mycd && cd mycd
    mkdir profiles
    cp ../sdd-profiles/* profiles/


check path for vmware, truecrypt and script.tar.gz, follow simple-cdd-custom.conf (all_extras parameter) and run CD generation:

    build-simple-cdd --conf ../simple-cdd-custom.conf --dist jessie

Possible variants(dont use it):

    build-simple-cdd --conf ../simple-cdd-custom.conf --dist jessie --force-root >build_log_1 2>build_log_2
    build-simple-cdd  -p custom --do-mirror --dist jessie
