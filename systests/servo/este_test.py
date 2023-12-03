#!/usr/bin/env python3

import easygopigo3
import time # import the time library for the sleep function

egpg3= easygopigo3.EasyGoPiGo3()

servo1 = egpg3.init_servo(egpg3.SERVO_1)

# Servo Setup & Tests
servo1_Center = 84 # 98
servo1_MaxLeft = servo1_Center +55 # 167
servo1_MaxRight = servo1_Center -65 # 33

maxTestCycles = 20 * 60 * 8 # 8 hours  maximum number of cycles to perform
cycleWaitTime = 1 # wait time in sec between cycles

servo1.rotate_servo(servo1_Center)
time.sleep(1)

try:
  for cycle in range(maxTestCycles):
    servo1.rotate_servo(servo1_MaxRight)
    time.sleep(1)

    servo1.rotate_servo(servo1_MaxLeft)
    time.sleep(1)


    time.sleep(cycleWaitTime)
except KeyboardInterrupt:
    pass

servo1.rotate_servo(servo1_Center)
time.sleep(1)

servo1.disable_servo()

