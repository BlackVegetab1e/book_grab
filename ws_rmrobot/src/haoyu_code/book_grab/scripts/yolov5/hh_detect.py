#!/usr/bin/env python
from depth import the_master_piece_of_hh
from geometry_msgs.msg import Pose
import rospy
from book_grab.srv import hh_eye, hh_eyeRequest, hh_eyeResponse
import cv2

def hh_sb(req):
    x,y,z,a = the_master_piece_of_hh(camera)


    result = hh_eyeResponse(x/1000,y/1000,z/1000,a)
    return result


if __name__ == "__main__":
    rospy.init_node("hh_eye_detect")

    camera = cv2.VideoCapture(2)
    ret, frame = camera.read()
    print(ret)
    if not ret:
        for i in range(1,5):
            camera = cv2.VideoCapture(i)
            ret, frame = camera.read()
            if ret:
                print("摄像头正确打开，端口：" + str(i))
                break
            if (not ret) and (i == 4):
                print("傻逼没插摄像头")
        
    else:
        print("摄像头正确打开，端口2：")
    print(frame.shape)

    eye_server = rospy.Service("/get_book_place", hh_eye, hh_sb)
    rospy.spin()
