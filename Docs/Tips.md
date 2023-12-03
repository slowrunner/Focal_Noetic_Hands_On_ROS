# TIPS For Using ROS Noetic / Ubuntu 20.04  
# With "Hands On ROS For Robotics Programming"  

This image is based on Ubuntu 20.04 which includes Python3,  
now that python (python2.x) is obsoleted.

This image uses ROS Noetic which is the latest and last ROS that will be released.

1) ROS Noetic Desktop is already installed  (ros-noetic-desktop)  
   You do not need to do the ROS install steps in Chapter 3 pgs 85-87  

2) Wherever the book mentions melodic, substitute noetic:   
   e.g. change:  sudo apt install ros-melodic-navigation  
   to:  sudo apt install ros-noetic-navigation  
  
3) Wherever the book's code has python, change to python3  
   e.g.  change: #!/usr/bin/env python  
   to:   #!/usr/bin/env python3  
  
4) Wherever the book's code uses a print statement without parens,  
   e.g.  change:  print msg  
   to:   print(msg)  


## Convenience Scripts in ~/catkin_ws  
  
* **ss.sh** - re-issues source /opt/ros/noetic/setup.bash which is also in .bashrc)  
          and sources devel/setup.bash  
<br>
<br>

* **get_gopigo3.sh** - Move Noetic version of original GoPiGo3 ROS node to ~/catkin_ws/src  
  (instead of HoR Chapter 6 pg 177 git clone ros-gopigo/gopigo3_node )  
  
* **run_teleop.sh** - Runs teleop_twist_keyboard node (apt installed in this image)  
  (Chap 7 pg 223 installs teleop-tools which includes teleop_key with key mappings for arrow keys)  
  
* **echo_cmd_vel.sh** - Displays the cmd_vel topic published by tele_key or teleop_twist_keybard

* **run_gopigo3.sh** - runs the Noetic version of original GoPiGo3 ROS node added with get_gopigo3.sh script
  (Use with run_teleop.sh to drive ROS GoPiGo3)  
<br>
<br>

* **get_mygopigo3.sh** - Move Noetic version of HoR pkg_mygopigo to ~/catkin_ws/src (just this not all chap6 code)
    
* **run_mygopigo.sh** - Runs the Noetic version of HoR mygopigo package gopigo3_driver node  
  (Use with run_teleop.sh to drive ROS GoPiGo3)
<br>
<br>

* **get_chap3.sh** - Move HoR Chapter 3 code to ~/catkin_ws/src  (topic pub, topic sub and doubler sub+pub node)
  
* **get_chap6.sh** - Move Noetic version of HoR Chapter 6 code to ~/catkin_ws/src  
  (instead of pg 166 git clone and copy)
<br>
<br>

## == SHUTDOWN  
- sudo shutdown -h \[now\]

