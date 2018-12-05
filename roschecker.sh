#!/bin/bash

cat /etc/bash.bashrc | grep setup.bash 

if [[ $? -eq 0 ]]; then
  echo "ROS CLI is already setup."
else
  echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> /etc/bash.bashrc
  source /etc/bash.bashrc
fi

rostopic info $1
if [[ $? -eq 0 ]]; then
  x=`rosparam get rosversion`
  echo "Topic '$1' delivered from pulisher running on `rosversion rosnode`"; 
else
  echo "Topic '$1' not delivered from publisher running on `rosversion rosnode`";
fi

