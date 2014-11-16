simple-cdd
----------

Preparation:

install debian-cd from unstable(3.1.16)

remove console-tools from default profile

Run simple-cdd :

mkdir mycd && cd mycd

mkdir profiles

cp ../sdd-profiles/* profiles/

build-simple-cdd  -p custom --do-mirror --dist jessie
