#include <ros/ros.h>
#include <serial/serial.h>
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>
#include "geometry_msgs/Vector3Stamped.h"

serial::Serial force_serial;

double string2force(uint8_t *receive_data, int begin, int char_at_offset, int data_b_offset, int data_e_offset);
int main (int argc, char** argv){
    ros::init(argc, argv, "force_receive");
    ros::NodeHandle nh;

    try
    {
        force_serial.setPort("/dev/3D_force_sensor");
        force_serial.setBaudrate(19200);
        serial::Timeout to = serial::Timeout::simpleTimeout(1000);
        force_serial.setTimeout(to);
        force_serial.open();
    }
    catch (serial::IOException& e)
    {
        ROS_ERROR("Unable to open port ");
        return -1;
    }

    if(force_serial.isOpen())
    {
        ROS_INFO("Serial Port initialized");
    }
    else
    {
        return -1;
    }

    ros::Publisher pub_force = nh.advertise<geometry_msgs::Vector3Stamped>("force_3D", 10);
    geometry_msgs::Vector3Stamped force_stamped;
    force_stamped.header.frame_id = "Link6";

    force_serial.flush();
    force_serial.flushInput();
    

    while(ros::ok()){
        if(force_serial.available()>30)
        {
            int available = force_serial.available();

            uint8_t receive_data[99];
            if(available>=33)
            {   

                force_serial.read(receive_data,33);
                if(available >= 100)
                {
                    continue;
                }
            }
            else{
                continue;
            }

            int begin = 0;
            for(begin = 0 ; begin < available-30 ; begin++)
            {
                if(receive_data[begin] == 0x02)
                {
                    if(begin + 32 <= available )
                    {
                        if(receive_data[begin + 32] == 0xff )
                        {
                            break;
                        }
                    }
                }
            }
            if(begin + 32 <= available && receive_data[begin] == 0x02 && receive_data[begin + 32] == 0xff)
            {
                double force_x, force_y, force_z;
                force_x = string2force(receive_data, begin, 1, 2, 7);
                force_y = string2force(receive_data, begin, 8, 9, 14);
                force_z = string2force(receive_data, begin, 15, 16, 21);
                
                force_stamped.header.stamp = ros::Time::now();
                force_stamped.vector.x = force_x;
                force_stamped.vector.y = force_y;
                force_stamped.vector.z = force_z;

                pub_force.publish(force_stamped);
                
            }
        }
    }



}


    



double string2force(uint8_t *receive_data, int begin, int char_at_offset, int data_b_offset, int data_e_offset)
{
    double force = 0;
    for(int i = begin+data_b_offset; i <= begin+data_e_offset; i++)
    {
        force *= 10;
        force += receive_data[i] - '0';
    }
    if(receive_data[begin + char_at_offset] == 0x2d)
    {
        force *= -1;
    }
    int dot = receive_data[begin+29] - '0';
    for(int i = 0 ; i<dot; i++)
    {
        force /= 10;
    }
    return force;
}



