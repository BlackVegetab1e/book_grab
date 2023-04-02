// Generated by gencpp from file rm_msgs/Manual_Set_Force_Pose.msg
// DO NOT EDIT!


#ifndef RM_MSGS_MESSAGE_MANUAL_SET_FORCE_POSE_H
#define RM_MSGS_MESSAGE_MANUAL_SET_FORCE_POSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rm_msgs
{
template <class ContainerAllocator>
struct Manual_Set_Force_Pose_
{
  typedef Manual_Set_Force_Pose_<ContainerAllocator> Type;

  Manual_Set_Force_Pose_()
    : joint()  {
      joint.assign(0);
  }
  Manual_Set_Force_Pose_(const ContainerAllocator& _alloc)
    : joint()  {
  (void)_alloc;
      joint.assign(0);
  }



   typedef boost::array<int16_t, 6>  _joint_type;
  _joint_type joint;





  typedef boost::shared_ptr< ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator> const> ConstPtr;

}; // struct Manual_Set_Force_Pose_

typedef ::rm_msgs::Manual_Set_Force_Pose_<std::allocator<void> > Manual_Set_Force_Pose;

typedef boost::shared_ptr< ::rm_msgs::Manual_Set_Force_Pose > Manual_Set_Force_PosePtr;
typedef boost::shared_ptr< ::rm_msgs::Manual_Set_Force_Pose const> Manual_Set_Force_PoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator1> & lhs, const ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator2> & rhs)
{
  return lhs.joint == rhs.joint;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator1> & lhs, const ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "115602d63d436656f43358faf13c608e";
  }

  static const char* value(const ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x115602d63d436656ULL;
  static const uint64_t static_value2 = 0xf43358faf13c608eULL;
};

template<class ContainerAllocator>
struct DataType< ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rm_msgs/Manual_Set_Force_Pose";
  }

  static const char* value(const ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16[6] joint\n"
"\n"
;
  }

  static const char* value(const ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Manual_Set_Force_Pose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rm_msgs::Manual_Set_Force_Pose_<ContainerAllocator>& v)
  {
    s << indent << "joint[]" << std::endl;
    for (size_t i = 0; i < v.joint.size(); ++i)
    {
      s << indent << "  joint[" << i << "]: ";
      Printer<int16_t>::stream(s, indent + "  ", v.joint[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // RM_MSGS_MESSAGE_MANUAL_SET_FORCE_POSE_H