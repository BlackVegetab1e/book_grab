#include <ros/ros.h>
#include "geometry_msgs/Vector3Stamped.h"
#include "geometry_msgs/Pose.h"
#include "book_grab/try_getin.h"

double force_x, force_y, force_z;
ros::Publisher *step_move_ptr;

void chatch_force(const geometry_msgs::Vector3Stamped::ConstPtr &force)
{
    force_x = force->vector.x;
    force_y = force->vector.y;
    force_z = force->vector.z;
}

bool get_in(book_grab::try_getin::Request &req,book_grab::try_getin::Response& resp)
{
    geometry_msgs::Pose forward_try;
    ROS_INFO("force_z%f",force_z);
    while(force_z <=0)
    {
        forward_try.position.x = 0;
        forward_try.position.y = 0;
        forward_try.position.z = 0.003;
        step_move_ptr->publish(forward_try);
        ros::Duration(3).sleep();
        
    }
    ROS_INFO("touch detected");

    forward_try.position.x = 0;
    forward_try.position.y = 0;
    forward_try.position.z = 0.006;
    step_move_ptr->publish(forward_try);

    ROS_INFO("forward");
    ros::Duration(3).sleep();


    bool collection_detected = false;
    bool successful = false;
    ROS_INFO("force_z%f",force_z);


    if(force_z > 0.3)
    {
        // collection detected
        ROS_INFO("collection detected");
        collection_detected = true;
    }
    else
    {
        ROS_INFO("no collection ");
        successful = true;
    }

    while(collection_detected)
    {
        forward_try.position.x = 0;
        forward_try.position.y = 0.01;
        forward_try.position.z = 0;
        step_move_ptr->publish(forward_try);
        ros::Duration(3).sleep();
        ROS_INFO("x: %f z: %f",force_x,force_z);

        ROS_INFO("x need forward");

        if(force_x > 0.15)
        {
            ROS_INFO("collection x");
            successful = true;
            break;
        }
        if(force_z<0.2)
        {
            ROS_INFO("z need forward");
            forward_try.position.x = 0;
            forward_try.position.y = 0;
            forward_try.position.z = 0.005;
            step_move_ptr->publish(forward_try);
            ros::Duration(1).sleep();
        }

    }

    if(successful)
    {
        ROS_INFO("successful ");
        forward_try.position.x = 0;
        forward_try.position.y = 0;
        forward_try.position.z = 0.02;
        step_move_ptr->publish(forward_try);
        ros::Duration(1).sleep();
    }
}


int main(int argc, char** argv)
{
    setlocale(LC_ALL,"");
    ros::init(argc, argv, "get_in_by_force");
    ros::NodeHandle nh;
    ros::Subscriber receive_force = nh.subscribe<geometry_msgs::Vector3Stamped>("force_3D", 10, chatch_force);
    ros::ServiceServer force_server = nh.advertiseService("try_get_in", get_in);
    ros::Publisher step_move = nh.advertise<geometry_msgs::Pose>("step_move", 10);
    step_move_ptr = &step_move;
    ros::AsyncSpinner spinner(3);
	spinner.start();
    



    ros::waitForShutdown();
}


