# INSTALL ROS Noetic on Ubuntu 20.04 Server (64-bit)

# Add ROS repository to sources list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Add ROS key - REF: https://kumarasenau.medium.com/installing-ubuntu-and-ros-noetic-on-raspberry-pi-4-a-step-by-step-guide-81cf709067cf
# sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# Add ROS Key - ROS Wiki: https://wiki.ros.org/noetic/Installation/Ubuntu
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

# Update the package list
sudo apt update

# any problems, run:
# sudo dpkg --configure -a

# Install ROS Noetic
sudo apt install ros-noetic-ros-base

# Set up env for ROS
source /opt/ros/noetic/setup.bash
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc

# Install needed ROS dependencies
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential python3-catkin-tools

# Install useful ROS packages
sudo apt install ros-noetic-teleop-twist-keyboard

# Init rosdep and update dependencies
sudo rosdep init
rosdep update

# Create a ROS workspace in home directory
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws

# Init the workspace
catkin_make

# Source new setup.bash 
source devel/setup.bash

# Verify workspace
echo $OS_PACKAGE_PATH
echo "** Should be /home/pi/catkin_ws/src:/opt/ros/noetic/share **"

#  Complete - ready to use
echo "ROS Noetic Install Complete"
