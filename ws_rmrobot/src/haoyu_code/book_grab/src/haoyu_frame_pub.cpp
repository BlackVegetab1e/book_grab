#include "ros/ros.h"
#include "tf2_ros/static_transform_broadcaster.h"
#include "geometry_msgs/TransformStamped.h"
#include "tf2/LinearMath/Quaternion.h"

int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");

    ros::init(argc,argv,"grabber_cam_frame_pub");

    tf2_ros::StaticTransformBroadcaster broadcaster;

    geometry_msgs::TransformStamped ts;
    geometry_msgs::TransformStamped L_cam_ts;
    geometry_msgs::TransformStamped R_cam_ts;
    geometry_msgs::TransformStamped book_work_frame;
    geometry_msgs::TransformStamped real_grabber_frame;
    geometry_msgs::TransformStamped grabber_tip;

    ts.header.seq = 100;
    ts.header.stamp = ros::Time::now();
    ts.header.frame_id = "Link6";
    //----设置子级坐标系
    ts.child_frame_id = "Grabber";
    //----设置子级相对于父级的偏移量
    ts.transform.translation.x = 0;
    ts.transform.translation.y = 0;
    ts.transform.translation.z = 0.135;
    //----设置四元数:将 欧拉角数据转换成四元数
    tf2::Quaternion qtn;
    
    qtn.setRPY(0,0,0);
    ts.transform.rotation.x = qtn.getX();
    ts.transform.rotation.y = qtn.getY();
    ts.transform.rotation.z = qtn.getZ();
    ts.transform.rotation.w = qtn.getW();
    // 5.广播器发布坐标系信息


    L_cam_ts.header.seq = 100;
    L_cam_ts.header.stamp = ros::Time::now();
    L_cam_ts.header.frame_id = "Link6";
    //----设置子级坐标系
    L_cam_ts.child_frame_id = "LeftCam";
    //----设置子级相对于父级的偏移量
    L_cam_ts.transform.translation.x = 0.097;
    L_cam_ts.transform.translation.y = -0.03;
    L_cam_ts.transform.translation.z = -0.17;
    //----设置四元数:将 欧拉角数据转换成四元数
    L_cam_ts.transform.rotation.x = qtn.getX();
    L_cam_ts.transform.rotation.y = qtn.getY();
    L_cam_ts.transform.rotation.z = qtn.getZ();
    L_cam_ts.transform.rotation.w = qtn.getW();
    // 5.广播器发布坐标系信息

    // R_cam_ts.header.seq = 100;
    // R_cam_ts.header.stamp = ros::Time::now();
    // R_cam_ts.header.frame_id = "Link6";
    // //----设置子级坐标系
    // R_cam_ts.child_frame_id = "RightCam";
    // //----设置子级相对于父级的偏移量
    // R_cam_ts.transform.translation.x = -0.09;
    // R_cam_ts.transform.translation.y = -0.03;
    // R_cam_ts.transform.translation.z = 0.045;
    // //----设置四元数:将 欧拉角数据转换成四元数
    // R_cam_ts.transform.rotation.x = qtn.getX();
    // R_cam_ts.transform.rotation.y = qtn.getY();
    // R_cam_ts.transform.rotation.z = qtn.getZ();
    // R_cam_ts.transform.rotation.w = qtn.getW();
    // // 5.广播器发布坐标系信息



    book_work_frame.header.seq = 100;
    book_work_frame.header.stamp = ros::Time::now();
    book_work_frame.header.frame_id = "dummy";
    //----设置子级坐标系
    book_work_frame.child_frame_id = "book_work_frame";
    //----设置子级相对于父级的偏移量
    book_work_frame.transform.translation.x = 0.199;
    book_work_frame.transform.translation.y = -0.333;
    book_work_frame.transform.translation.z = 0.245;
    //----设置四元数:将 欧拉角数据转换成四元数
    book_work_frame.transform.rotation.x = 0.5;
    book_work_frame.transform.rotation.y = -0.5;
    book_work_frame.transform.rotation.z = 0.5;
    book_work_frame.transform.rotation.w = 0.5;
    // 5.广播器发布坐标系信息


 
    grabber_tip.header.seq = 100;
    grabber_tip.header.stamp = ros::Time::now();
    grabber_tip.header.frame_id = "Link6";
    //----设置子级坐标系
    grabber_tip.child_frame_id = "grabber_tip";
    //----设置子级相对于父级的偏移量
    grabber_tip.transform.translation.x = 0;
    grabber_tip.transform.translation.y = 0;
    grabber_tip.transform.translation.z = 0.037;
    //----设置四元数:将 欧拉角数据转换成四元数
    grabber_tip.transform.rotation.x = 0;
    grabber_tip.transform.rotation.y = 0;
    grabber_tip.transform.rotation.z = 0;
    grabber_tip.transform.rotation.w = 1;
    // 5.广播器发布坐标系信息



    // broadcaster.sendTransform(ts);
    broadcaster.sendTransform(L_cam_ts);
    // broadcaster.sendTransform(R_cam_ts);
    broadcaster.sendTransform(book_work_frame);
    broadcaster.sendTransform(grabber_tip);
    // broadcaster.sendTransform(real_grabber_frame);
    ros::spin();

    return 0;
}