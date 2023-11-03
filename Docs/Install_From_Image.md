# INSTALL "ROS Noetic GoPiGo3 Ubuntu 20.04" FROM IMAGE
  
Updated: 11-01-2023  
  
"ROS Noetic Ninjemys on Ubuntu 22.04 LTS Server (64-bit) w/desktop  
for GoPiGo3 Robots" to use on Raspberry Pi4 with  
BR Japon, "Hands On ROS For Robotics Programming", 2020  
  
is available as a 3.7GB image at:   
  
[HOR_Pi4.img.gz on my Google Drive](https://drive.google.com/file/d/1hIV8aMtXHlQtdo2X9vP59KWP1AdNWahc/view?usp=sharing)  
  
# Install From Image  
## 1) Download the custom image to your computer  
  
  
  
## 2) Flash SD card with Raspberry Pi Imager (v1.8.1 as of this date):  
  (See https://www.raspberrypi.com/software/ for latest Raspberry Pi Imager)  
  
  Select CHOOSE DEVICE - Pick Raspberry Pi 4  
    This image has been tested to run on Raspberry Pi 4 with 2GB RAM  
    (Pi3B/Pi3B+ robots should use the ROS Melodic Ubuntu Mate 18.04) 
    
  Select CHOOSE OS  
    (scroll to bottom) Use custom  
    navigate to the saved location of the ```HOR_Pi4.img.gz``` image  
    click Open  
    
  Select CHOOSE STORAGE (DANGER! - CHOOSE WISELY)  
    Select your Generic STORAGE DEVICE Media - 32 GB SD Card (Minimum 16GB)  
    Expanded image will take 11GB - 32GB card recommended
  
  Select NEXT  
    Use OS customisation?  Select NO  (Custom Settings will not work, trust me)  
    
  Warning: All existing data on "Generic STORAGE DEVICE Media" will be erased.  
  Are you sure you want to continue?  SELECT YES  
  On a Mac: Enter your laptop/desktop login password:  Select OK or press Enter  
     
    
  When "Write Successful: You can now remove the SD card from the reader" appears:    
  Pull the HOR_Pi4 microSD card out.  Select Continue, Close Raspberry Pi Imager  
     
    
## 3) First Boot (can be in any Pi4, does not need to be mounted to GoPiGo3 yet)  
  - **Connect Keyboard, HDMI Display, and Mouse**  
  - Turn Battery Switch to On  
  - Press the GoPiGo3 power (on) button to start the first boot   
  - The system will boot, then reboot,  
    **after about 4 minutes** ... it will display the desktop with pi username filled in 
    (It may also show console - click the mouse or wiggle the mouse a while till it repaints the desktop)  
  - Click on the Pi user (or press Enter Key)  
  - Enter robots1234 for the password  
      
## 4)  === Change passwords  
  - Click terminal icon ">_" on left  
  - $  
    passwd  
    Changing password for pi   
    Current password: robots1234   
    New password: _______   
    Retype new password: _______  
  - $  
    vncpasswd  
    Password: (type your new password)  
    Verify:  ______  
    Would you like to enter a view-only password (y/n)?  **n**  
  - $  
     
  
## 5)  == Configure WiFi  
  - Click the "9-Dots" bottom left of display  
    Select Settings  
    Should open to WiFi Pane  
    Your WiFi should appear in the list of Visible Networks  
    To the right of the lock symbol of the desired network, click with the left mouse button  
    (You may have to click on a different network to get the "Settings Gear" for the desired network to display.. keep trying)  
    Select the Security tab  
    -  Check Show Password, then enter your WiFi net password/phrase  
    -  Click Apply  
    Open Terminal, enter ifconfig to view wlan0 net address  
    $ ifconfig  
    (Note wlan0 ip address)  
  
## 6) == REBOOT  
  Optional:  Connect speaker or headphones to 3.5mm jack  
  Open Terminal, enter:  
  sudo reboot  
  Will announce IP over speaker/headphones  
  
## 7) == TRY REMOTE DESKTOP  
  Mac:  splat-k - enter vnc://xx.xx.xx.xx:5901  
        Enter vncpassword set above  
        **DO NOT LOG OUT FROM THE VNC SESSION.**  
        **CLOSE IT, BUT DO NOT LOG OUT - YOU WILL NOT GET A SECOND WARNING**  
  
## 8) == TRY SSH REMOTE TERMINAL
  ssh pi@xx.xx.xx.xx
  (if problem - try ```ssh-keygen -R xx.xx.xx.xx``, then retry the ssh)  
  BTW: If boot with no display and just ssh in, OS only uses 700MB memory  
  
## 9) == UPDATE THE SYSTEM  
Open Terminal:  
- sudo apt update  
- sudo apt upgrade  
  
## 10) == SHUTDOWN  
- sudo shutdown -h \[now\]

## 11) == REVIEW TIPS 

[Tips on using this image with the book](https://github.com/slowrunner/Focal_Noetic_Hands_On_ROS/blob/main/Docs/Tips.md)


  


