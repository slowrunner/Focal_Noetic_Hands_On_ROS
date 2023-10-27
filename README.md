# Focal_Noetic_Hands_On_ROS

Investigated GoPiGo3 on Ubuntu 20.04 Focal with ROS Noetic  
to be a companion to BR Japon book "Hands On ROS For Robotics Programming"  


* Ubuntu 20.04 LTS Server (64-bit) (success)  
* setup_ip_feedback script (success)  
* GoPiGo3 on Ubuntu 20.04 install script (success)  
* ROS Noetic install script (success)  
* Add ubuntu-desktop to server  
  (success ... I cannot believe this worked no issues detected)  
* Basic Test of ROS Noetic with Chapter3_ROS_Basics (success)  
  run_teleop_twist_keyboard script  
  echo_cmd_vel script  
* Basic test of a ROS Noetic GoPiGo3 node with teleop_twist_keyboard  
  "i-key" drives robot forward  
  "k-key" stops robot  
  publishing /odom  (untuned WHEEL_DIAMETER drive 1m publishes 1.39m)  
* Distance_Sensor node works - 443mm publishes 448mm  

# Installation  

```
cd ~  
git clone https://github.com/slowrunner/Focal_Noetic_Hands_On_ROS.git /home/pi  
source Focal_Noetic_Hands_On_ROS/setup/install_gopigo3_on_ubuntu.sh

```
