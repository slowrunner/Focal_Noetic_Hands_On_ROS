# Updates After Install From Image

## pigpiod

```
cd /home/ubuntu/utils
mv pigpiod.service pigpiod.service.former

wget https://raw.githubusercontent.com/slowrunner/ROS2-GoPiGo3/main/utils/pigpiod.service
wget https://raw.githubusercontent.com/slowrunner/ROS2-GoPiGo3/main/utils/install_pigpiod.sh
source install_pigpiod.sh
```
