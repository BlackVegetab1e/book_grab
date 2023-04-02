#! /usr/bin/env python2

import rospy
from geometry_msgs.msg import Vector3Stamped
import tf2_ros
from geometry_msgs.msg import TransformStamped
import signal,sys

def exit(signum, frame):
    print('Saving File.')
    f.close()
    sys.exit()




def process(msg):
    # msg = Vector3Stamped()
    force_time = msg.header.stamp
    force_x = msg.vector.x
    force_y = msg.vector.y
    force_z = msg.vector.z
    
    trans = buffer.lookup_transform("book_work_frame","Link6",rospy.Time(0),rospy.Duration(2))
    # trans = TransformStamped()
    trans_time = trans.header.stamp
    trans_x = trans.transform.translation.x
    trans_y = trans.transform.translation.y
    trans_z = trans.transform.translation.z
    trans_r_x = trans.transform.rotation.x
    trans_r_y = trans.transform.rotation.y
    trans_r_z = trans.transform.rotation.z
    trans_r_w = trans.transform.rotation.w
    str_write = "%f,%f,%f,%f,%f,%f,%f,%f,%f,%f\n"%(force_x, force_y, force_z, trans_x, trans_y, trans_z, trans_r_x, trans_r_y, trans_r_z, trans_r_w)
    f.write(str_write)




if __name__ == "__main__":

    rospy.init_node("schedule_puber")
    buffer = tf2_ros.Buffer()
    

    signal.signal(signal.SIGINT, exit)
    signal.signal(signal.SIGTERM, exit)
    f = open("bad3.txt", 'w')
    str_write = "force_x,force_y,force_z,trans_x,trans_y,trans_z,trans_r_x,trans_r_y,trans_r_z,trans_r_w\n"
    f.write(str_write)
    listener = tf2_ros.TransformListener(buffer)
    rospy.Subscriber("/force_3D",Vector3Stamped,process)

    rospy.spin()



