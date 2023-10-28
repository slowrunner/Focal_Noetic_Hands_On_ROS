#!/bin/bash

echo "GET Noetic version of Basic GoPiGo for start of CHAPTER 6 (pg 177, ebook page 192)"
# cd ~/catkin_ws/src
# git clone https://github.com/ros-gopigo/gopigo3_node
cp -R ~/Hands-On-ROS-for-Robotics-Programming/gopigo3_node ~/catkin_ws/src
cd ~/catkin_ws
catkin_make
source ss.sh
echo "gopigo3_node ready to run with: run_gopigo3.sh"
