# Updates After Install From 2023-11-01 HOR-Pi4.gz Image

## Slow Shutdown - pigpiod

```
cd /home/pi/Focal_Noetic_Hands_On_ROS/setup
mv pigpiod.service pigpiod.service.former

wget https://raw.githubusercontent.com/slowrunner/Focal_Noetic_Hands_On_ROS/main/setup/pigpiod.service
wget https://raw.githubusercontent.com/slowrunner/Focal_Noetic_Hands_On_ROS/main/setup/install_pigpiod.sh
source install_pigpiod.sh
```

## Slow Boot

```sudo nano /etc/netplan/50--cloud-init.yaml```  
and add to make file contain optional at boot ethernet spec:  

```
network:
    ethernets:
        eth0:
            dhcp4: true
            dhcp6: false
            optional: true
    version: 2
    wifis:
        renderer: networkd
        wlan0:
            dhcp4: true
            dhcp6: false
            optional: true
            access-points:
              your-ssid:
              password: your-ecrypted-password              
```

## Enable Bluetooth Devices (optional)

```
sudo apt install pi-bluetooth blueman
```
