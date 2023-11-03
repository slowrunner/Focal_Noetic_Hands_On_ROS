# Test the Image on GoPiGo3 Robot


## Noetic version of original ros-gopigo3 node (HoR Chap6 pg 177)  
1) ```./get_gopigo.sh```  
2) Open three shells (remote ssh or on desktop)  T1, T2, T3  
3) T1: ```roscore```  
4) T2: ```./run_gopigo3.sh```  
5) T3: ```./run_teleop.sh```  
6) Press j-key, robot should spin left/ccw  
7) Press k-key to stop spin  
8) Press x-key repeatedly till speed is 0.15 or less  
9) Press i-key to drive forward, spacebar to stop  
10) Press comma-key to drive backward, spacebar to stop  
11) Control-C in T3, T2, T1  

## Noetic version of mygopigo package gopigo3_driver node (HoR Chap6/7)  
1) ```./get_mygopigo.sh```  
2) Open three shells (remote ssh or on desktop)  T1, T2, T3  
3) T1: ```roscore```  
4) T2: ```./run_mygopigo.sh```    
5) T3: ```./run_teleop.sh```  
6) Press j-key, robot should spin left/ccw  
7) Press k-key to stop spin  
8) Press x-key repeatedly till speed is 0.15 or less  
9) Press i-key to drive forward, spacebar to stop  
10) Press comma-key to drive backward, spacebar to stop  
11) Control-C in T3, T2, T1  

