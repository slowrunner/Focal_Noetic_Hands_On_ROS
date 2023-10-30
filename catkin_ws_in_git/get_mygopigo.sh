#!/bin/bash

echo "GET ONLY the Noetic version of the mygopigo package from CHAPTER 6 (pg 166, ebook page 176)"
cp -R ~/Hands-On-ROS-for-Robotics-Programming/Chapter6_ROS_programming/pkg_mygopigo ~/catkin_ws/src
cd ~/catkin_ws
catkin_make
source ss.sh
echo "mygopigo node ready to run with: run_mygopigo.sh"
