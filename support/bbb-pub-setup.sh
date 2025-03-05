#!/bin/bash


dns=$1
email=$2

echo 'Setting up bbb for :'
echo $1
echo $2
wget -qO- https://raw.githubusercontent.com/bigbluebutton/bbb-install/v3.0.x-release/bbb-install.sh | bash -s -- -w -v focal-270 -s $1 -e $2 -g -w

git clone https://github.com/sasidhar-serv/bbb-install.git
cd bbb-install
cd support/
chmod +x support.sh
bash support.sh
echo 'All done'
