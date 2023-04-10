#include "ros/ros.h"
#include "std_msgs/Bool.h"
#include "std_msgs/Float32.h"
#include "geometry_msgs/TransformStamped.h"
#include "geometry_msgs/Pose.h"
#include "geometry_msgs/PoseStamped.h"
#include "geometry_msgs/PointStamped.h"
#include "tf2/LinearMath/Quaternion.h"
#include "tf2_ros/transform_listener.h"
#include "tf2_ros/buffer.h"
#include <rm_msgs/MoveJ.h>
#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/robot_trajectory/robot_trajectory.h>
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"
#include "quaternion_haoyu.h"

ros::Publisher *pub_ptr;
moveit::planning_interface::MoveGroupInterface *arm_prt;
tf2_ros::Buffer *buffer_ptr;
void Cartesian_move(std::vector<geometry_msgs::Pose> &waypoints);
void move_based_on_now(const geometry_msgs::Pose &step);
geometry_msgs::Pose book_frame_Pose_to_dummy_Pose(const geometry_msgs::Pose & book_frame_pose)
{
    geometry_msgs::PoseStamped book_frame_stamped_pose;
    book_frame_stamped_pose.pose = book_frame_pose;
    book_frame_stamped_pose.header.seq = 0;
    book_frame_stamped_pose.header.stamp = ros::Time::now();
    book_frame_stamped_pose.header.frame_id = "book_work_frame";
    return buffer_ptr->transform(book_frame_stamped_pose, "dummy").pose;
}

geometry_msgs::Pose dummy_Pose_to_book_frame_Pose(const geometry_msgs::Pose & book_frame_pose)
{
    geometry_msgs::PoseStamped book_frame_stamped_pose;
    book_frame_stamped_pose.pose = book_frame_pose;
    book_frame_stamped_pose.header.seq = 0;
    book_frame_stamped_pose.header.stamp = ros::Time::now();
    book_frame_stamped_pose.header.frame_id = "dummy";
    return buffer_ptr->transform(book_frame_stamped_pose, "book_work_frame").pose;
}

void init_work_frame(const std_msgs::Bool::ConstPtr& msg_p)
{
    if(msg_p)
    {
        rm_msgs::MoveJ initPose;
        initPose.joint[0] = -0.16425685186386108;
        initPose.joint[1] = -0.6230347749710083;
        initPose.joint[2] = -2.266161653137207;
        initPose.joint[3] = 1.41126875;
        initPose.joint[4] = 1.5297717063903808;
        initPose.joint[5] = 1.846820734024048;
        initPose.speed = 0.15;

        pub_ptr->publish(initPose);
        ros::Duration(2).sleep();

    }
    else{
        
    }
}



// geometry_msgs::Pose get_now_pose(const geometry_msgs::Pose & book_frame_pose)
// {
//     geometry_msgs::Pose temp;
//     auto receive = buffer_ptr->lookupTransform("dummy","real_grabber_frame",ros::Time(0), ros::Duration(1)).transform;
//     temp.orientation =  receive.rotation;
//     temp.position.x =  receive.translation.x;
//     temp.position.z =  receive.translation.z;
//     temp.position.y =  receive.translation.y;
//     return temp;
// }



void point_to_straight(const std_msgs::Bool::ConstPtr& msg_p)
{
    geometry_msgs::Pose start_pose = dummy_Pose_to_book_frame_Pose(arm_prt->getCurrentPose("Link6").pose);
    geometry_msgs::Pose target_pose;
    
    target_pose.position = start_pose.position;
    target_pose.orientation = Quaternion().get_orientation();
    std::vector<geometry_msgs::Pose> waypoints;
    
	waypoints.push_back(book_frame_Pose_to_dummy_Pose(target_pose));
    Cartesian_move(waypoints);
}

void book_move(const geometry_msgs::Pose::ConstPtr& msg_p)
{      

    geometry_msgs::Pose end_points = dummy_Pose_to_book_frame_Pose(arm_prt->getCurrentPose("Link6").pose);
    if(msg_p->position.x>0.20 || msg_p->position.x<-0.05)
    {
        ROS_ERROR("x_direction arm_out_of_flexbile_range____haoyu define");
        return;
    }
    if(msg_p->position.y>0.05 || msg_p->position.y<-0.20)
    {
        ROS_ERROR("y_direction arm_out_of_flexbile_range____haoyu define");
        return;
    }
    if(msg_p->position.z>0.25 || msg_p->position.z<-0.05)
    {
        ROS_ERROR("z_direction arm_out_of_flexbile_range____haoyu define");
        return;
    }
    end_points.position = msg_p->position;

    std::vector<geometry_msgs::Pose> waypoints;

    // geometry_msgs::Pose pose = book_frame_Pose_to_dummy_Pose(*msg_p);
    // pose.orientation = (rotate_angle*Quaternion(pose.orientation)).get_orientation();
	// waypoints.push_back(pose);
    waypoints.push_back(book_frame_Pose_to_dummy_Pose(end_points));
    

    Cartesian_move(waypoints);
}

void eye_pose_book_frame_move_tip_toouch(const geometry_msgs::Pose::ConstPtr& eye_pose)
{
    geometry_msgs::PoseStamped eye_pose_stamped;
    geometry_msgs::Pose tip_pose;
    eye_pose_stamped.pose = *eye_pose;
    eye_pose_stamped.header.seq = 0;
    eye_pose_stamped.header.stamp = ros::Time::now();
    eye_pose_stamped.header.frame_id = "LeftCam";
    tip_pose = buffer_ptr->transform(eye_pose_stamped, "grabber_tip_L").pose;
    move_based_on_now(tip_pose);
}
void eye_pose_book_frame_move_hand_toouch(const geometry_msgs::Pose::ConstPtr& eye_pose)
{
    geometry_msgs::PoseStamped eye_pose_stamped;
    geometry_msgs::Pose tip_pose;
    eye_pose_stamped.pose = *eye_pose;
    eye_pose_stamped.header.seq = 0;
    eye_pose_stamped.header.stamp = ros::Time::now();
    eye_pose_stamped.header.frame_id = "LeftCam";
    tip_pose = buffer_ptr->transform(eye_pose_stamped, "grabber_tip").pose;
    move_based_on_now(tip_pose);
}




void move_based_on_now(const geometry_msgs::Pose &step)
{
    geometry_msgs::Pose start_pose = dummy_Pose_to_book_frame_Pose(arm_prt->getCurrentPose("Link6").pose);
    geometry_msgs::Pose target_pose;
    target_pose.orientation = start_pose.orientation;
    target_pose.position.x = start_pose.position.x + step.position.x;
    target_pose.position.y = start_pose.position.y + step.position.y;
    target_pose.position.z = start_pose.position.z + step.position.z;

    if(target_pose.position.x>0.20 || target_pose.position.x<-5)
    {
        ROS_ERROR("x_direction arm_out_of_flexbile_range____haoyu define%f", target_pose.position.x);
        return;
    }
    if(target_pose.position.y>0 || target_pose.position.y<-0.20)
    {
        ROS_ERROR("y_direction arm_out_of_flexbile_range____haoyu define%f", target_pose.position.y);
        return;
    }
    if(target_pose.position.z>0.25 || target_pose.position.z<0)
    {
        ROS_ERROR("z_directionarm_out_of_flexbile_range____haoyu define%f", target_pose.position.z);
        return;
    }

    std::vector<geometry_msgs::Pose> waypoints;
	waypoints.push_back(book_frame_Pose_to_dummy_Pose(target_pose));
    Cartesian_move(waypoints);
    
}


void step_move(const geometry_msgs::Pose::ConstPtr& msg_p)
{
    geometry_msgs::Pose step;
    step = *msg_p;
    move_based_on_now(step);
}







void hang_swing(const std_msgs::Bool::ConstPtr& msg_p)
{
    geometry_msgs::Pose start_pose = dummy_Pose_to_book_frame_Pose(arm_prt->getCurrentPose("Link6").pose);
    


    if(start_pose.position.y>-0.02 || start_pose.position.x<-0.15)
    {
        ROS_ERROR("arm_out_of_flexbile_range____haoyu define");
        return;
    }

    std::vector<geometry_msgs::Pose> waypoints;
    start_pose.position.y += 0.04;
	waypoints.push_back(book_frame_Pose_to_dummy_Pose(start_pose));
    start_pose.position.y -= 0.08;
	waypoints.push_back(book_frame_Pose_to_dummy_Pose(start_pose));
    start_pose.position.y += 0.08;
	waypoints.push_back(book_frame_Pose_to_dummy_Pose(start_pose));
    start_pose.position.y -= 0.08;
	waypoints.push_back(book_frame_Pose_to_dummy_Pose(start_pose));
    start_pose.position.y += 0.08;
	waypoints.push_back(book_frame_Pose_to_dummy_Pose(start_pose));
    start_pose.position.y -= 0.08;
	waypoints.push_back(book_frame_Pose_to_dummy_Pose(start_pose));
    start_pose.position.y += 0.04;
	waypoints.push_back(book_frame_Pose_to_dummy_Pose(start_pose));
	
    Cartesian_move(waypoints);
}


void book_rotate(const std_msgs::Float32::ConstPtr& rad)
{
    geometry_msgs::Pose start_pose = dummy_Pose_to_book_frame_Pose(arm_prt->getCurrentPose("Link6").pose);
    Quaternion now_orientation(start_pose.orientation);
    Quaternion rotate('y', rad->data);
    Quaternion result = rotate*now_orientation;
    geometry_msgs::Pose target_pose;
    target_pose.position = start_pose.position;
    target_pose.orientation = result.get_orientation();
    std::cout<<now_orientation<<std::endl;
    std::cout<<rotate<<std::endl;
    std::cout<<result<<std::endl;
    
    
    std::vector<geometry_msgs::Pose> waypoints;

	waypoints.push_back(book_frame_Pose_to_dummy_Pose(target_pose));

    Cartesian_move(waypoints);
}

void book_rotate_x(const std_msgs::Float32::ConstPtr& rad)
{
    geometry_msgs::Pose start_pose = dummy_Pose_to_book_frame_Pose(arm_prt->getCurrentPose("Link6").pose);
    Quaternion now_orientation(start_pose.orientation);
    Quaternion rotate('x', rad->data);
    Quaternion result = rotate*now_orientation;
    geometry_msgs::Pose target_pose;
    target_pose.position = start_pose.position;
    target_pose.orientation = result.get_orientation();
    std::cout<<now_orientation<<std::endl;
    std::cout<<rotate<<std::endl;
    std::cout<<result<<std::endl;
    
    std::vector<geometry_msgs::Pose> waypoints;

	waypoints.push_back(book_frame_Pose_to_dummy_Pose(target_pose));

    Cartesian_move(waypoints);
}

void book_rotate_x_tip(const std_msgs::Float32::ConstPtr& rad)
{
    geometry_msgs::TransformStamped trans = buffer_ptr->lookupTransform("grabber_tip_L","Link6",ros::Time(0), ros::Duration(1));
    double length = sqrt(trans.transform.translation.y*trans.transform.translation.y
                     + trans.transform.translation.z*trans.transform.translation.z);
    double init_angle = atan2(abs(trans.transform.translation.z),abs(trans.transform.translation.y));


    double execuate_angle = init_angle - rad->data;
    
    geometry_msgs::PoseStamped aim_pose,aim_Link6_pose;
    aim_pose.header.frame_id = "grabber_tip_L";
    aim_pose.header.stamp = ros::Time::now();
    aim_pose.pose.position.x = 0;
    aim_pose.pose.position.y = length * cos(execuate_angle);
    aim_pose.pose.position.z = -length * sin(execuate_angle);
    Quaternion target_orientation('x',rad->data);
    aim_pose.pose.orientation = target_orientation.get_orientation();

    aim_Link6_pose = buffer_ptr->transform(aim_pose, "dummy",ros::Duration(1));


    std::vector<geometry_msgs::Pose> waypoints;    
	waypoints.push_back(aim_Link6_pose.pose);
    Cartesian_move(waypoints);



}

void Cartesian_move(std::vector<geometry_msgs::Pose> &waypoints)
{
    
    moveit_msgs::RobotTrajectory trajectory;
	const double jump_threshold = 0.0;
	const double eef_step = 0.01;
	double fraction = 0.0;
    int maxtries = 100;   //最大尝试规划次数
    int attempts = 0;     //已经尝试规划次数

    while(fraction < 1.0 && attempts < maxtries)
    {
        fraction = arm_prt->computeCartesianPath(waypoints, eef_step, jump_threshold, trajectory);
        attempts++;
        
        if(attempts % 10 == 0)
            ROS_INFO("Still trying after %d attempts...", attempts);
    }
    
    if(fraction == 1)
    {   
        ROS_INFO("Path computed successfully. Moving the arm.");

	    // 生成机械臂的运动规划数据
	    moveit::planning_interface::MoveGroupInterface::Plan plan;
	    plan.trajectory_ = trajectory;

	    // 执行运动
	    arm_prt->execute(plan);
        sleep(1);
    }
    else
    {
        ROS_INFO("Path planning failed with only %0.6f success after %d attempts.", fraction, maxtries);
    }
}

void test_fun(const std_msgs::Bool::ConstPtr& msg_p)
{
    // arm_prt->setEndEffector("grabber_tip");
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "book_work_service");
    ros::NodeHandle nh;    

	ros::AsyncSpinner spinner(5);
	spinner.start();

    tf2_ros::Buffer buffer;
    tf2_ros::TransformListener listener(buffer);
    ros::Duration(0.5).sleep();
    buffer_ptr = &buffer;

    moveit::planning_interface::MoveGroupInterface arm("arm");
    arm_prt = &arm;
    //设置目标位置所使用的参考坐标系
    std::string reference_frame = "base_link";
    arm.setPoseReferenceFrame(reference_frame);
    //当运动规划失败后，允许重新规划
    arm.allowReplanning(true);
    //设置位置(单位：米)和姿态（单位：弧度）的允许误差
    arm.setGoalPositionTolerance(0.001);
    arm.setGoalOrientationTolerance(0.01);
    //设置允许的最大速度和加速度
    arm.setMaxAccelerationScalingFactor(0.2);
    arm.setMaxVelocityScalingFactor(0.2);
 
    ros::Publisher pub = nh.advertise<rm_msgs::MoveJ>("/rm_driver/MoveJ_Cmd", 10);
    
    pub_ptr = &pub;
    ros::Subscriber sub_init = nh.subscribe<std_msgs::Bool>("book_frame_init", 10, init_work_frame);
    ros::Subscriber sub_Pose = nh.subscribe<geometry_msgs::Pose>("book_frame_move_parally",10, book_move);
    ros::Subscriber touch_with_tip = nh.subscribe<geometry_msgs::Pose>("eye_pose_book_frame_move_tip_toouch",10, eye_pose_book_frame_move_tip_toouch);
    ros::Subscriber touch_with_hand = nh.subscribe<geometry_msgs::Pose>("eye_pose_book_frame_move_hand_toouch",10, eye_pose_book_frame_move_hand_toouch);
    ros::Subscriber rotate = nh.subscribe<std_msgs::Float32>("rotate_around_y",10, book_rotate);
    ros::Subscriber rotate_x = nh.subscribe<std_msgs::Float32>("rotate_around_x",10, book_rotate_x);
    ros::Subscriber rotate_x_tip = nh.subscribe<std_msgs::Float32>("rotate_around_x_tip",10, book_rotate_x_tip);
    ros::Subscriber straight_forward = nh.subscribe<std_msgs::Bool>("point_to_straight",10, point_to_straight);
    ros::Subscriber step_move_rec = nh.subscribe<geometry_msgs::Pose>("step_move",10, step_move);
    ros::Subscriber swing = nh.subscribe<std_msgs::Bool>("hang_swing",10, hang_swing);
    ros::Subscriber test = nh.subscribe<std_msgs::Bool>("test",10, test_fun);


    ros::waitForShutdown();
}


