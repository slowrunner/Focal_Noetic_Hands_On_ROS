# Creating The Master Image  

1) ==== Image and configure Ubuntu 20.04 LTS Server (64-bit)  
- verify pi user, ssh, wifi  
- Disable ipv6 if desired: ipv6.disable=1 at end of /boot/firmware/cmdline.txt  
- sudo apt remove unattended-upgrades  (a no-no by some folk)  
- sudo apt install net-tools  
- sudo apt update; sudo apt upgrade  
- sudo apt install ubuntu-desktop  
- Configure Password-less sudo  
  - sudo nano /etc/sudoers  
  make sudo group look like:  
  ```
  # Allow members of group sudo to execute any command
  %sudo	ALL=(ALL:ALL) NOPASSWD: ALL
  ```  
- install/configure tigervncserver
  
- MAKE A BACKUP of this "clean, prepared OS"  
  
  
2)  ==== Install GoPiGo3 Software  

```
cd ~  
git clone https://github.com/slowrunner/Focal_Noetic_Hands_On_ROS.git /home/pi/Focal_Noetic_Hands_On_ROS  
source ~/Focal_Noetic_Hands_On_ROS/setup/install_gopigo3_on_ubuntu.sh  
echo "Done GoPiGo3 Install"

```
  
  * Then:  
```
sudo reboot  
```  
  
  
3) ==== Install ROS Noetic Desktop  
  
```  
cd ~  
source ~/Focal_Noetic_Hands_On_ROS/setup/setup_ROS_Noetic.sh  
  
```    

  
4) ==== Setup "Noetic Version Hands On ROS code"  
  
```
cd ~
source ~/Focal_Noetic_Hands_On_ROS/setup/get_noetic_HoROS_code.sh
  
```    
  
  * Then:
```
sudo reboot
  
```

  
5) ==== Test Installation
