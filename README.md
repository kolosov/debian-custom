debian-custom
=============

Debian custom cd scripts and documentation

Run simple-cdd :
mkdir mycd && cd mycd
mkdir profiles
cp ../sdd-profiles/* profiles/

build-simple-cdd  -p custom --do-mirror --dist jessie
