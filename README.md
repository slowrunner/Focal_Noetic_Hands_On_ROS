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

1) Image and configure Ubuntu 20.04 LTS Server (64-bit)  
- verify pi user, ssh, wifi  
- Disable ipv6 if desired: ipv6.disable=1 at end of /boot/firmware/cmdline.txt  
- sudo apt remove unattended-upgrades  (a no-no by some folk)  
- sudo apt install net-tools  
- sudo apt update; sudo apt upgrade  
- sudo apt install ubuntu-desktop  
- === CONFIGURE PASSWORD-LESS SUDO  
  - sudo nano /etc/sudoers  

  make sudo group look like:  
  ```
  # Allow members of group sudo to execute any command
  %sudo	ALL=(ALL:ALL) NOPASSWD: ALL
  ```
- make a backup of this "clean, prepared OS"  


2)  Install GoPiGo3 Software  

```
cd ~  
git clone https://github.com/slowrunner/Focal_Noetic_Hands_On_ROS.git /home/pi/Focal_Noetic_Hands_On_ROS  
source Focal_Noetic_Hands_On_ROS/setup/install_gopigo3_on_ubuntu.sh  

```

3) Install ROS Noetic Desktop  
```
cd ~  
source Focal_Noetic_Hands_On_ROS/setup/install_ROS_Noetic.sh  
```
