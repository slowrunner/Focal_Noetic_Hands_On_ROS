#!/bin/bash


while true; do echo -e "\n********** HOR2023 GoPiGo3 MONITOR ******************************"; echo -n `date +"%A %D"`; echo ""; uptime; vcgen
cmd measure_temp && vcgencmd measure_clock arm && vcgencmd get_throttled; free -h; python3 /home/pi/Focal_Noetic_Hands_On_ROS/systests/servo/
gopigo3_battery.py; sleep 10; echo " "; done
