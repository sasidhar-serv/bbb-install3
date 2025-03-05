#!/bin/sh
#Changing in bigbluebutton.properties
echo '=================================================================================================================================================================='
echo 'changing in demoFile.properties'
sed -i 's/defaultWelcomeMessage=.*/defaultWelcomeMessage=Welcome to <b>%%CONFNAME%%<\/b>!<br><br>Use a headset to avoid causing background noise for others./g' /usr/share/bbb-web/WEB-INF/classes/bigbluebutton.properties
echo 'added defaultWelcomeMessage=Welcome to <b>%%CONFNAME%%<\/b>!<br><br>Use a headset to avoid causing background noise for others.'
sed -i 's/defaultWelcomeMessageFooter=.*/defaultWelcomeMessageFooter=Entrar Live Classes/g' /usr/share/bbb-web/WEB-INF/classes/bigbluebutton.properties
echo 'added Entrar Live Classes'
sed -i 's/meetingExpireIfNoUserJoinedInMinutes=.*/meetingExpireIfNoUserJoinedInMinutes=30/g' /usr/share/bbb-web/WEB-INF/classes/bigbluebutton.properties
echo 'meetingExpireIfNoUserJoinedInMinutes=30'
sed -i 's/meetingExpireWhenLastUserLeftInMinutes=.*/meetingExpireWhenLastUserLeftInMinutes=5/g' /usr/share/bbb-web/WEB-INF/classes/bigbluebutton.properties
echo 'meetingExpireWhenLastUserLeftInMinutes=5'
sed -i 's/allowModsToUnmuteUsers=.*/allowModsToUnmuteUsers=true/g' /usr/share/bbb-web/WEB-INF/classes/bigbluebutton.properties
echo 'bigbluebutton.web.logoutURL=www.entrar.in'
sed -i 's/bigbluebutton.web.logoutURL=.*/bigbluebutton.web.logoutURL=www.entrar.in/g' /usr/share/bbb-web/WEB-INF/classes/bigbluebutton.properties
echo 'bigbluebutton.web.logoutURL=www.entrar.in'
echo 'allowDuplicateExtUserid=false'
sed -i 's/allowDuplicateExtUserid=.*/allowDuplicateExtUserid=false/g' /usr/share/bbb-web/WEB-INF/classes/bigbluebutton.properties
echo 'allowRequestsWithoutSession=false'
sed -i 's/allowRequestsWithoutSession=.*/allowRequestsWithoutSession=false/g' /usr/share/bbb-web/WEB-INF/classes/bigbluebutton.properties
echo 'bigbluebutton.properties changes are done'
echo '=================================================================================================================================================================='

