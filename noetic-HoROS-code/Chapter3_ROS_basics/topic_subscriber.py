#!/usr/bin/env python3

# Changed env python ->  env python3 for ROS Noetic 

# BEGIN ALL
# !/usr/bin/env python3


import rospy
from std_msgs.msg import Int32


# BEGIN CALLBACK
def callback(msg):
    print msg.data
    rospy.loginfo(rospy.get_caller_id() + 'I heard %s', msg.data)
# END CALLBACK


rospy.init_node('topic_subscriber')

# BEGIN SUBSCRIBER
sub = rospy.Subscriber('counter', Int32, callback)
# END SUBSCRIBER

rospy.spin()
# END ALL
