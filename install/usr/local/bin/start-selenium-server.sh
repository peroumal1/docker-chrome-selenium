#!/bin/bash

export DISPLAY=:99
/etc/init.d/xvfb start
echo "Starting Google Chrome ..."
google-chrome --remote-debugging-port=9222 &
java -Dwebdriver.chrome.driver=/srv/chromedriver -jar /srv/selenium-server-standalone-2.44.0.jar 
