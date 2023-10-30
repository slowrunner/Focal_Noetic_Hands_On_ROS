#!/bin/bash

echo "RUN mygopigo package version of gopigo3_driver.py"
cd ~/catkin_ws
source ss.sh
rosrun mygopigo gopigo3_driver.py
