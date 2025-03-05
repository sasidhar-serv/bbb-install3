#!/bin/sh

echo 'Changing /usr/share/meteor/bundle/programs/server/assets/app/config/settings.yml'
echo '================================================================================'
 
sed -i 's/clientTitle:.*/clientTitle: EntrarLive/g' /usr/share/meteor/bundle/programs/server/assets/app/config/settings.yml
sed -i 's/copyright:.*/copyright: "©2021 Entrar"/g' /usr/share/meteor/bundle/programs/server/assets/app/config/settings.yml
sed -i 's/html5ClientBuild:.*/html5ClientBuild: 9/g' /usr/share/meteor/bundle/programs/server/assets/app/config/settings.yml
sed -i 's/helpLink:.*/helpLink: https:\/\/entrar.in/g' /usr/share/meteor/bundle/programs/server/assets/app/config/settings.yml
sed -i 's/s/displayBbbServerVersion: true/displayBbbServerVersion: false/g' /usr/share/meteor/bundle/programs/server/assets/app/config/settings.yml
#Not working this currently
#sed -i 's/cameraProfiles:\n    - id: low\n      name: Low quality\n      default: false\n      bitrate: 100\n    - id: medium\n      name: Medium quality\n      default: true\n      bitrate: 200\n    - id: high\n      name: High quality\n      default: false\n      bitrate: 500\n    - id: hd\n      name: High definition\n      default: false\n      bitrate: 800/cameraProfiles:\n    - id: low\n      name: Low quality\n      default: false\n      bitrate: 50\n    - id: medium\n      name: Medium quality\n      default: true\n      bitrate: 100\n    - id: high\n      name: High quality\n      default: false\n      bitrate: 200\n    - id: hd\n      name: High definition\n      default: false\n      bitrate: 400\n/g' /home/introtuce/kpcc/bbb-install-master/postInstallation/settingdemo.yml

echo 'Please change CameraProfile manually could not change by script'

echo '================================================================================'
