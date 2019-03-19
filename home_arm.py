#!/usr/bin/env python

"""
Script to return Baxter's arms to a "home" position
"""

#rospy - ROS Python API 
import rospy

#baxter_interface - Baxter Python API 
import sixrobot_interface
#initialize our ROS node, registering it with the Master 
rospy.init_node('Home_Arms')

#create instances of baxter_interface's Limb class

limb_arm = sixrobot_interface.Limb('arm') 


# store the home position of the arms

home_arm = {'joint1': 0.00, 'joint2': 0.296, 'joint3': 0.00, 'joint4': 0.00, 'joint5': 0.00, 'joint6': 0.00}
# move both arms to home position 
limb_arm.move_to_joint_positions(home_arm) 

quit()
