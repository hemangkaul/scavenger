#!/bin/bash
/usr/local/maven/current/bin/mvn package -f /var/trtl/pom.xml -DskipTests=true
sudo nohup ./run --port 80 --gui &
PID=$!
echo $PID > pid.txt
