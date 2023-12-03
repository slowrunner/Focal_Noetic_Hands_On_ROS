#!/bin/bash

sudo systemctl stop pigpiod.service
sudo cp /home/pi/Focal_Noetic_Hands_On_ROS/setup/pigpiod.service /etc/systemd/system
sudo systemctl enable pigpiod.service
sudo systemctl start pigpiod.service
systemctl status pigpiod.service
