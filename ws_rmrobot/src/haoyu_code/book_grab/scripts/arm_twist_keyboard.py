#!/usr/bin/env python

from __future__ import print_function

import roslib; #roslib.load_manifest('teleop_twist_keyboard')
import rospy

from geometry_msgs.msg import Twist
from geometry_msgs.msg import Pose
from std_msgs.msg import Float32
from std_msgs.msg import Bool
import sys, select, termios, tty

msg = """
Reading from the keyboard  and Publishing to Twist!
---------------------------
Moving around:
   u    i    o
   j    k    l
   m    ,    .

For Holonomic mode (strafing), hold down the shift key:
---------------------------
   U    I    O
   J    K    L
   M    <    >

t : up (+z)
b : down (-z)

anything else : stop

q/z : increase/decrease max speeds by 10%
w/x : increase/decrease only linear speed by 10%
e/c : increase/decrease only angular speed by 10%

CTRL-C to quit
"""

moveBindings = {
        'k':(1,0,0,0),
        'i':(1,0,0,0),
        'o':(1,0,0,-1),
        'j':(0,0,0,1),
        'l':(0,0,0,-1),
        'u':(1,0,0,1),
        ',':(-1,0,0,0),
        '.':(-1,0,0,1),
        'm':(-1,0,0,-1),
        'O':(1,-1,0,0),
        'I':(1,0,0,0),
        'J':(0,1,0,0),
        'L':(0,-1,0,0),
        'U':(1,1,0,0),
        '<':(-1,0,0,0),
        '>':(-1,-1,0,0),
        'M':(-1,1,0,0),
        't':(0,0,1,0),
        'b':(0,0,-1,0),
    }

def getKey():
    tty.setraw(sys.stdin.fileno())
    select.select([sys.stdin], [], [], 0)
    key = sys.stdin.read(1)
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key


def vels(speed,turn):
    return "currently:\tspeed %s\tturn %s " % (speed,turn)

if __name__=="__main__":
    settings = termios.tcgetattr(sys.stdin)

    
    rospy.init_node('arm_twist_keyboard')

    pub_step = rospy.Publisher('step_move', Pose, queue_size = 3)
    pub_rotate = rospy.Publisher('rotate_around_y', Float32, queue_size = 3)
    reset = rospy.Publisher('book_frame_init', Bool, queue_size = 3)

    try:
        print(msg)

        while(not rospy.is_shutdown()):
            step_x = 0
            step_y = 0
            step_z = 0
            step_therta = 0
            key = getKey()
            if key in moveBindings.keys():
                if key == 'k':
                    rospy.logwarn("reset")
                    reset.publish(True)
                    rospy.sleep(0.5)
                    continue
                if key == 'i':
                    step_x = 0.03
                elif key == ',':
                    step_x = -0.03
                elif key == 'j':
                    step_y = -0.01
                elif key == 'l':
                    step_y = 0.01
                elif key == 'u':
                    step_z = 0.03
                elif key == 'o':
                    step_z = -0.03
                elif key == 'm':
                    step_therta = 0.02
                elif key == '.':
                    step_therta = -0.02
            
            if not (step_x == 0 and step_y == 0 and step_z == 0):
                step_pose = Pose()
                step_pose.position.x = step_x
                step_pose.position.y = step_y
                step_pose.position.z = step_z
                step_pose.orientation.x = 0
                step_pose.orientation.y = 0
                step_pose.orientation.z = 0
                step_pose.orientation.w = 1
                pub_step.publish(step_pose)
   
            if not step_therta == 0:
                pub_rotate.publish(step_therta)
  
                

            rospy.sleep(0.1)


    except Exception as e:
        print(e)

    finally:
        twist = Twist()
        twist.linear.x = 0; twist.linear.y = 0; twist.linear.z = 0
        twist.angular.x = 0; twist.angular.y = 0; twist.angular.z = 0

        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
