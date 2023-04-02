#include "ros/ros.h"
#include "std_msgs/Bool.h"
#include "std_msgs/Float32.h"
#include "std_msgs/Bool.h"
#include"geometry_msgs/Pose.h"
#include"rm_msgs/Gripper_Pick.h"
#include"rm_msgs/Gripper_Set.h"


int main(int argc, char** argv)
{
    ros::init(argc, argv, "put_book_in");
    ros::NodeHandle nh;   

    ros::Publisher pub_init = nh.advertise<std_msgs::Bool>("book_frame_init", 10);
    ros::Publisher pub_Pose = nh.advertise<geometry_msgs::Pose>("book_frame_move_parally",10);
    ros::Publisher pub_rotate = nh.advertise<std_msgs::Float32>("rotate_around_y",10);
    ros::Publisher pub_straight_forward = nh.advertise<std_msgs::Bool>("point_to_straight",10);
    ros::Publisher pub_step_move_rec = nh.advertise<geometry_msgs::Pose>("step_move",10);
    ros::Publisher pub_swing = nh.advertise<std_msgs::Bool>("hang_swing",10);
    ros::Publisher gripper_pick = nh.advertise<rm_msgs::Gripper_Pick>("/rm_driver/Gripper_Pick",10);
    ros::Publisher gripper_set = nh.advertise<rm_msgs::Gripper_Set>("/rm_driver/Gripper_Set",10);



    ros::Duration(1).sleep();


     
    


}