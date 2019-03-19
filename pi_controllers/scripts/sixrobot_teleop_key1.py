#!/usr/bin/env python 
# -*- coding: utf-8 -*-
import rospy 
from std_msgs.msg import UInt8 
from geometry_msgs.msg import Twist
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
        'q':(1,0), 
        'a':(-1,0), 
        'w':(1,0), 
        's':(-1,0),
        'e':(1,0), 
        'd':(-1,0), 
        'r':(1,0), 
        'f':(-1,0),
        't':(1,0), 
        'g':(-1,0), 
        'y':(1,0), 
        'h':(-1,0),
          } 

speedBindings={
        'z':(1.1,1.1),
        'x':(.9,.9),
        'c':(1.1,1),
        'v':(.9,1),

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
    pub = rospy.Publisher('commands',  Twist, queue_size=5) 

    x = 0

    status = 0
    count = 0
    acc = 0.1
    target_speed = 0
    control_speed = 0

    rate = rospy.Rate(5) 
    try: 
        print msg 
        while(1): 
            key = getKey() 
            # 运动控制方向键（1：正方向，-1负方向）
            if key in moveBindings.keys(): 
                x = moveBindings[key][0] 
                count = 0
            # 速度修改键
            elif key in speedBindings.keys():
                speed = speed * speedBindings[key][0]  # 线速度增加0.1倍
                turn = turn * speedBindings[key][1]    # 角速度增加0.1倍
                count = 0
           # 停止键
            elif key == ' ' or key == 'k' :
                x = 0

                control_speed = 0

            else:
                count = count + 1
                if count > 4:
                    x = 0
             
                if (key == '\x03'):
                    break

            # 目标速度=速度值*方向值
            target_speed = speed * x

            # 速度限位，防止速度增减过快
            if target_speed > control_speed:
                control_speed = min( target_speed, control_speed + 0.02 )
            elif target_speed < control_speed:
                control_speed = max( target_speed, control_speed - 0.02 )
            else:
                control_speed = target_speed

            # 创建并发布twist消息
            twist = Twist()
            twist.linear.x = control_speed; 
            twist.linear.y = 0; 
            twist.linear.z = 0
            pub.publish(twist) 
    except: 
        print e 
    finally: 
        twist = Twist()
        twist.linear.x = 0; twist.linear.y = 0; twist.linear.z = 0
        pub.publish(twist)

    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)