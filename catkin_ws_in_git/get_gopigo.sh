#!/bin/bash

echo "GET Basic GoPiGo for start of CHAPTER 6 (pg 177, ebook page 192)"
cd ~/catkin_ws/src
git clone https://github.com/ros-gopigo/gopigo3_node
cd ~/catkin_ws
catkin_make
