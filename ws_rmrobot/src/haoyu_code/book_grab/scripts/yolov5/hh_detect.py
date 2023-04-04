#!/usr/bin/env python
from depth import the_master_piece_of_hh
from geometry_msgs.msg import Pose
import rospy
from book_grab.srv import hh_eye, hh_eyeRequest, hh_eyeResponse

def hh_sb(req):
    x,y,z,a = the_master_piece_of_hh()


    result = hh_eyeResponse(-y/1000,-x/1000,z/1000,a)
    return result


if __name__ == "__main__":
    rospy.init_node("hh_eye_detect")
    eye_server = rospy.Service("/get_book_place", hh_eye, hh_sb)
    rospy.spin()
