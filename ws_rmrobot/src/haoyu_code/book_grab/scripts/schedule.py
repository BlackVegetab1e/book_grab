#! /usr/bin/env python

import rospy
from std_msgs.msg import Bool
from std_msgs.msg import Float32
from geometry_msgs.msg import Pose
from rm_msgs.msg import Gripper_Pick
from rm_msgs.msg import Gripper_Set
from book_grab.srv import hh_eye, hh_eyeRequest, hh_eyeResponse



if __name__ == "__main__":

    rospy.init_node("schedule_puber")

    pub_init = rospy.Publisher("book_frame_init",Bool,queue_size=10)
    pub_Pose = rospy.Publisher("book_frame_move_parally",Pose,queue_size=10)
    pub_rotate_y = rospy.Publisher("rotate_around_y",Float32,queue_size=10)
    pub_rotate_x = rospy.Publisher("rotate_around_x",Float32,queue_size=10)
    pub_straight_forward = rospy.Publisher("point_to_straight",Bool,queue_size=10)
    pub_step_move = rospy.Publisher("step_move",Pose,queue_size=10)
    pub_eye_move = rospy.Publisher("eye_pose_book_frame_move_tip_toouch",Pose,queue_size=10)
    pub_swing = rospy.Publisher("hang_swing",Bool,queue_size=10)
    pub_Gripper_Pick = rospy.Publisher("/rm_driver/Gripper_Pick",Gripper_Pick,queue_size=10)
    pub_Gripper_Set = rospy.Publisher("/rm_driver/Gripper_Set",Gripper_Set,queue_size=10)
    
    get_book_pose = rospy.ServiceProxy("/get_book_place",hh_eye)
    get_book_pose.wait_for_service()


    rospy.sleep(1);
    data_bool = Bool()
    data_pose = Pose()
    data_gripper_set = Gripper_Set()
    data_gripper_pick = Gripper_Pick()

    # data_gripper_set.position = 1000
    # pub_Gripper_Set.publish(data_gripper_set)


    data_gripper_pick.force = 1000
    data_gripper_pick.speed = 100
    pub_Gripper_Pick.publish(data_gripper_pick)
    rospy.sleep(3)

    data_bool.data = True;
    pub_init.publish(data_bool)
    rospy.sleep(3)


    data_pose.position.x = 0.00
    data_pose.position.y = -0.075
    data_pose.position.z = 0
    data_pose.orientation.w = 1
    pub_Pose.publish(data_pose)
    rospy.sleep(3)

    # pub_rotate_y.publish(-0.2)
    # rospy.sleep(3)
    # pub_rotate_x.publish(-0.3)
    # rospy.sleep(3)

    resp = get_book_pose.call(True)
    data_pose.position.x = resp.x
    data_pose.position.y = resp.y
    data_pose.position.z = resp.z

    pub_eye_move.publish(data_pose)

    rospy.sleep(5)


    data_pose.position.x = 0
    data_pose.position.y = 0
    data_pose.position.z = 0.02

    pub_step_move.publish(data_pose)

    rospy.sleep(5)