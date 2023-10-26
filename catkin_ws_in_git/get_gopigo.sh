#!/bin/bash

echo "GET Basic GoPiGo for start of CHAPTER 6 (pg 177, ebook page 192)"
cd ~/catkin_ws/src
# git clone https://github.com/ros-gopigo/gopigo3_node
cp -r ~/Focal_Noetic_Hands_On_ROS/noetic-HoROS-code/gopigo3_node ~/catkin_ws/src
cd ~/catkin_ws
catkin_make
