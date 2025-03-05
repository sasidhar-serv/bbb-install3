#!bin/sh
#changing in bigbluebutton.properties
echo '=================================================================================================================================================================='
echo 'changing in bigbluebutton.properties'
echo 'allowDuplicateExtUserid=false'
sed -i 's/allowDuplicateExtUserid=.*/allowDuplicateExtUserid=false/g' /usr/share/bbb-web/WEB-INF/classes/bigbluebutton.properties
echo 'allowRequestsWithoutSession=false'
sed -i 's/allowRequestsWithoutSession=.*/allowRequestsWithoutSession=false/g' /usr/share/bbb-web/WEB-INF/classes/bigbluebutton.properties
echo 'bigbluebutton.properties changes are done'
echo '=================================================================================================================================================================='
