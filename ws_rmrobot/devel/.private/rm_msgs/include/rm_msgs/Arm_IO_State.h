// Generated by gencpp from file rm_msgs/Arm_IO_State.msg
// DO NOT EDIT!


#ifndef RM_MSGS_MESSAGE_ARM_IO_STATE_H
#define RM_MSGS_MESSAGE_ARM_IO_STATE_H


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
struct Arm_IO_State_
{
  typedef Arm_IO_State_<ContainerAllocator> Type;

  Arm_IO_State_()
    : Arm_Digital_Input()
    , Arm_Analog_Input()  {
      Arm_Digital_Input.assign(false);

      Arm_Analog_Input.assign(0.0);
  }
  Arm_IO_State_(const ContainerAllocator& _alloc)
    : Arm_Digital_Input()
    , Arm_Analog_Input()  {
  (void)_alloc;
      Arm_Digital_Input.assign(false);

      Arm_Analog_Input.assign(0.0);
  }



   typedef boost::array<uint8_t, 3>  _Arm_Digital_Input_type;
  _Arm_Digital_Input_type Arm_Digital_Input;

   typedef boost::array<float, 4>  _Arm_Analog_Input_type;
  _Arm_Analog_Input_type Arm_Analog_Input;





  typedef boost::shared_ptr< ::rm_msgs::Arm_IO_State_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rm_msgs::Arm_IO_State_<ContainerAllocator> const> ConstPtr;

}; // struct Arm_IO_State_

typedef ::rm_msgs::Arm_IO_State_<std::allocator<void> > Arm_IO_State;

typedef boost::shared_ptr< ::rm_msgs::Arm_IO_State > Arm_IO_StatePtr;
typedef boost::shared_ptr< ::rm_msgs::Arm_IO_State const> Arm_IO_StateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rm_msgs::Arm_IO_State_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rm_msgs::Arm_IO_State_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rm_msgs::Arm_IO_State_<ContainerAllocator1> & lhs, const ::rm_msgs::Arm_IO_State_<ContainerAllocator2> & rhs)
{
  return lhs.Arm_Digital_Input == rhs.Arm_Digital_Input &&
    lhs.Arm_Analog_Input == rhs.Arm_Analog_Input;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rm_msgs::Arm_IO_State_<ContainerAllocator1> & lhs, const ::rm_msgs::Arm_IO_State_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rm_msgs::Arm_IO_State_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rm_msgs::Arm_IO_State_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_msgs::Arm_IO_State_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_msgs::Arm_IO_State_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_msgs::Arm_IO_State_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_msgs::Arm_IO_State_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rm_msgs::Arm_IO_State_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dba6b2c7dc8fed61c5893347742c9c44";
  }

  static const char* value(const ::rm_msgs::Arm_IO_State_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdba6b2c7dc8fed61ULL;
  static const uint64_t static_value2 = 0xc5893347742c9c44ULL;
};

template<class ContainerAllocator>
struct DataType< ::rm_msgs::Arm_IO_State_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rm_msgs/Arm_IO_State";
  }

  static const char* value(const ::rm_msgs::Arm_IO_State_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rm_msgs::Arm_IO_State_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool[3] Arm_Digital_Input\n"
"float32[4] Arm_Analog_Input\n"
;
  }

  static const char* value(const ::rm_msgs::Arm_IO_State_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rm_msgs::Arm_IO_State_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Arm_Digital_Input);
      stream.next(m.Arm_Analog_Input);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Arm_IO_State_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rm_msgs::Arm_IO_State_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rm_msgs::Arm_IO_State_<ContainerAllocator>& v)
  {
    s << indent << "Arm_Digital_Input[]" << std::endl;
    for (size_t i = 0; i < v.Arm_Digital_Input.size(); ++i)
    {
      s << indent << "  Arm_Digital_Input[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.Arm_Digital_Input[i]);
    }
    s << indent << "Arm_Analog_Input[]" << std::endl;
    for (size_t i = 0; i < v.Arm_Analog_Input.size(); ++i)
    {
      s << indent << "  Arm_Analog_Input[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.Arm_Analog_Input[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // RM_MSGS_MESSAGE_ARM_IO_STATE_H