#include <ros/ros.h>

#include <rm_msgs/MoveL.h>
#include <rm_msgs/MoveJ_P.h>
#include <rm_msgs/Plan_State.h>

#include "tf2_ros/transform_listener.h"
#include "geometry_msgs/TransformStamped.h"





int main(int argc, char** argv)
{

    setlocale(LC_ALL,"");
    ros::init(argc, argv, "test_grab");
    ros::NodeHandle nh;

    tf2_ros::Buffer buffer;
    tf2_ros::TransformListener listener(buffer);
    ros::Duration(0.5).sleep();

    ros::Publisher moveJ_P_pub = nh.advertise<rm_msgs::MoveJ_P>("/rm_driver/MoveJ_P_Cmd", 10);

    geometry_msgs::TransformStamped L_tfs = buffer.lookupTransform("base_link","Link6",ros::Time(0));
    
    geometry_msgs::TransformStamped g_tfs = buffer.lookupTransform("base_link","Grabber",ros::Time(0));
    
    geometry_msgs::TransformStamped c_tfs = buffer.lookupTransform("base_link","RightCam",ros::Time(0));
        
    
    rm_msgs::MoveJ_P moveJ_P_TargetPose;
    moveJ_P_TargetPose.Pose.position.x = L_tfs.transform.translation.x;
    moveJ_P_TargetPose.Pose.position.y = L_tfs.transform.translation.y;
    moveJ_P_TargetPose.Pose.position.z = L_tfs.transform.translation.z;
    moveJ_P_TargetPose.Pose.orientation.x = L_tfs.transform.rotation.x;
    moveJ_P_TargetPose.Pose.orientation.y = L_tfs.transform.rotation.y;
    moveJ_P_TargetPose.Pose.orientation.z = L_tfs.transform.rotation.z;
    moveJ_P_TargetPose.Pose.orientation.w = L_tfs.transform.rotation.w;
    moveJ_P_TargetPose.speed = 0.3;

    rm_msgs::MoveJ_P moveJ_P_TargetPose1;
    moveJ_P_TargetPose1.Pose.position.x = g_tfs.transform.translation.x;
    moveJ_P_TargetPose1.Pose.position.y = g_tfs.transform.translation.y;
    moveJ_P_TargetPose1.Pose.position.z = g_tfs.transform.translation.z;
    moveJ_P_TargetPose1.Pose.orientation.x = g_tfs.transform.rotation.x;
    moveJ_P_TargetPose1.Pose.orientation.y = g_tfs.transform.rotation.y;
    moveJ_P_TargetPose1.Pose.orientation.z = g_tfs.transform.rotation.z;
    moveJ_P_TargetPose1.Pose.orientation.w = g_tfs.transform.rotation.w;
    moveJ_P_TargetPose1.speed = 0.3;

    rm_msgs::MoveJ_P moveJ_P_TargetPose2;
    moveJ_P_TargetPose2.Pose.position.x = c_tfs.transform.translation.x;
    moveJ_P_TargetPose2.Pose.position.y = c_tfs.transform.translation.y;
    moveJ_P_TargetPose2.Pose.position.z = c_tfs.transform.translation.z;
    moveJ_P_TargetPose2.Pose.orientation.x = c_tfs.transform.rotation.x;
    moveJ_P_TargetPose2.Pose.orientation.y = c_tfs.transform.rotation.y;
    moveJ_P_TargetPose2.Pose.orientation.z = c_tfs.transform.rotation.z;
    moveJ_P_TargetPose2.Pose.orientation.w = c_tfs.transform.rotation.w;
    moveJ_P_TargetPose2.speed = 0.3;

    while(ros::ok())
    {
        moveJ_P_pub.publish(moveJ_P_TargetPose);
        ros::Duration(10).sleep();
        moveJ_P_pub.publish(moveJ_P_TargetPose1);
        ros::Duration(10).sleep();
        moveJ_P_pub.publish(moveJ_P_TargetPose2);
        ros::Duration(10).sleep();
    }
  



    ros::waitForShutdown();

    return 0;
}


