#include "ros/ros.h"
#include "std_msgs/Bool.h"
#include "std_msgs/Float32.h"
#include "std_msgs/Bool.h"
#include"geometry_msgs/Pose.h"
#include "rm_msgs/Gripper_Pick.h"
#include "rm_msgs/Gripper_Set.h"


int main(int argc, char** argv)
{
    ros::init(argc, argv, "grab_motion");
    ros::NodeHandle nh;   

    ros::Publisher pub_init = nh.advertise<std_msgs::Bool>("book_frame_init", 10);
    ros::Publisher pub_Pose = nh.advertise<geometry_msgs::Pose>("book_frame_move_parally",10);
    ros::Publisher pub_rotate = nh.advertise<std_msgs::Float32>("rotate_around_y",10);
    ros::Publisher pub_straight_forward = nh.advertise<std_msgs::Bool>("point_to_straight",10);
    ros::Publisher pub_step_move_rec = nh.advertise<geometry_msgs::Pose>("step_move",10);
    ros::Publisher pub_swing = nh.advertise<std_msgs::Bool>("hang_swing",10);
    ros::Publisher Gripper_Pick = nh.advertise<rm_msgs::Gripper_Pick>("/rm_driver/Gripper_Pick",10);
    ros::Publisher Gripper_Set = nh.advertise<rm_msgs::Gripper_Set>("/rm_driver/Gripper_Set",10);
    ros::Duration(1).sleep();

    rm_msgs::Gripper_Pick Gripper_Pick_msg;
    Gripper_Pick_msg.speed = 100;
    Gripper_Pick_msg.force = 1000;

    Gripper_Pick.publish(Gripper_Pick_msg);
    ros::Duration(3).sleep();
     
    std_msgs::Bool pub_var_bool;
    pub_var_bool.data = true;
    pub_init.publish(pub_var_bool);
    ROS_INFO("init");
    ros::Duration(5).sleep();


    geometry_msgs::Pose start_pose;
    start_pose.position.x =  0.02;
    start_pose.position.y = -0.075;
    start_pose.position.z = 0;
    start_pose.orientation.w = 1;

    pub_Pose.publish(start_pose);
    ros::Duration(3).sleep();

    std_msgs::Float32 pub_var_angle;
    pub_var_angle.data = (-15.0/180.0)*3.1415926;
    pub_rotate.publish(pub_var_angle);
    ros::Duration(3).sleep();

    geometry_msgs::Pose go_forward;
    go_forward.position.x = 0;
    go_forward.position.y = 0;
    go_forward.position.z = 0.135;
    pub_step_move_rec.publish(go_forward);
    ros::Duration(4).sleep();


    pub_var_angle.data = (15.0/180.0)*3.1415926;
    pub_rotate.publish(pub_var_angle);
    ros::Duration(4).sleep();

    // pub_swing.publish(pub_var_bool);
    // ros::Duration(12).sleep();


    go_forward.position.x = 0;
    go_forward.position.y = 0;
    go_forward.position.z = -0.05;
    pub_step_move_rec.publish(go_forward);

    ros::Duration(5).sleep();
    pub_var_bool.data = true;
    pub_init.publish(pub_var_bool);
    ROS_INFO("init");



    ros::waitForShutdown();


}