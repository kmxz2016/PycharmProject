#!/usr/bin/env python 
import rospy 
from std_msgs.msg import UInt8 
import sys, select, termios, tty 

msg = """ 
Control Your SixRobot! 
--------------------------- 
Moving around: 
q w e r t y
a s d f g h

q/w/e/r/t/y/a/s/d/f/g/h:directions 
k and anything else: stop 
CTRL-C to quit 
""" 

moveBindings = { 
    'q':1, 
    'a':2, 
    'w':3, 
    's':4,
    'e':5, 
    'd':6, 
    'r':7, 
    'f':8,
    't':9, 
    'g':10, 
    'y':11, 
    'h':12,


} 

def getKey(): 
    tty.setraw(sys.stdin.fileno()) 
    rlist, _, _ = select.select([sys.stdin], [], [], 0.1) 
    if rlist: 
        key = sys.stdin.read(1) 
    else: 
        key = '' 
        
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings) 
    return key 
    
if __name__=="__main__": 
    settings = termios.tcgetattr(sys.stdin) 
    rospy.init_node('SixRobot_teleop_key') 
    pub = rospy.Publisher('commands', UInt8, queue_size=5) 
    rate = rospy.Rate(5) 
    try: 
        print msg 
        while(1): 
            key = getKey() 
            if key in moveBindings.keys(): 
                x = moveBindings[key] 
            else: 
                x = 0 
            if (key == '\x03'): 
                break 
            m = UInt8() 
            m.data = x 
            pub.publish(m) 
    except: 
        print e 
    finally: 
        m = UInt8() 
        m.data = 0 
        pub.publish(m) 
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)