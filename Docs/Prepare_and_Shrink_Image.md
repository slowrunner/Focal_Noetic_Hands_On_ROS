# Prepare Master Image and Shrink

These step clean the history, and network configuration from the master image,  
then shrink the clean master for release

1) === Clean the master image ===  
   *  Change password to robots1234  
```
passwd  
   Current password:  
   New password: robots1234  
   Retype new password: robots1234  
```
  * rm /home/pi/Dexter/gpg3_config.json  
  * sudo cloud-init clean --logs  
  * sudo rm /etc/netplan/50-cloud-init.yaml  
  * edit /boot/firmware/network-config   
```
ethernets:
  eth0:
    optional: true
    dhcp4: true
wifis:  
  wlan0:  
    dhcp4: true  
    optional: true   
    access-points:  
      "your_SSID":  
        password: "your_netpswd"
```
  * clear bash history  
```
history -c  
history -w  
```
  * sudo shutdown -h now  
    
2) === Shrink the clean master  ===  
   (On Linux Laptop)

  * install pishrink
```
wget https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh
chmod +x pishrink.sh
sudo mv pishrink.sh /usr/local/bin
```
  * Save clean master image from microSD card
```
mkdir ~/HoROS
cd ~/HoROS
df   (look for mmcb0)

sudo dd -32M if=/dev/mmcb0 of=HoROS_Clean_Master.img  (takes 20-30 minutes)

use file manager to unmount card (both writable and system-boot partitions)


=== Using pshrink


sudo pishrink.sh -v -z HoROS_Clean_Master.mg  HoROS0.img

 will output ROS2HH.img.gz


==== Copy shrunk file to USB drive to move to Mac

- cp ROS2HH.img.gz /media/tovli/Alan
- mount on Mac and copy to ROS2HH_Image/
