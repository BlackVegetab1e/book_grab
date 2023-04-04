// Generated by gencpp from file book_grab/hh_eyeRequest.msg
// DO NOT EDIT!


#ifndef BOOK_GRAB_MESSAGE_HH_EYEREQUEST_H
#define BOOK_GRAB_MESSAGE_HH_EYEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace book_grab
{
template <class ContainerAllocator>
struct hh_eyeRequest_
{
  typedef hh_eyeRequest_<ContainerAllocator> Type;

  hh_eyeRequest_()
    : order(false)  {
    }
  hh_eyeRequest_(const ContainerAllocator& _alloc)
    : order(false)  {
  (void)_alloc;
    }



   typedef uint8_t _order_type;
  _order_type order;





  typedef boost::shared_ptr< ::book_grab::hh_eyeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::book_grab::hh_eyeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct hh_eyeRequest_

typedef ::book_grab::hh_eyeRequest_<std::allocator<void> > hh_eyeRequest;

typedef boost::shared_ptr< ::book_grab::hh_eyeRequest > hh_eyeRequestPtr;
typedef boost::shared_ptr< ::book_grab::hh_eyeRequest const> hh_eyeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::book_grab::hh_eyeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::book_grab::hh_eyeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::book_grab::hh_eyeRequest_<ContainerAllocator1> & lhs, const ::book_grab::hh_eyeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.order == rhs.order;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::book_grab::hh_eyeRequest_<ContainerAllocator1> & lhs, const ::book_grab::hh_eyeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace book_grab

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::book_grab::hh_eyeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::book_grab::hh_eyeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::book_grab::hh_eyeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::book_grab::hh_eyeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::book_grab::hh_eyeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::book_grab::hh_eyeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::book_grab::hh_eyeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "37c743137ed8b3eada52129fdbf02b1f";
  }

  static const char* value(const ::book_grab::hh_eyeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x37c743137ed8b3eaULL;
  static const uint64_t static_value2 = 0xda52129fdbf02b1fULL;
};

template<class ContainerAllocator>
struct DataType< ::book_grab::hh_eyeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "book_grab/hh_eyeRequest";
  }

  static const char* value(const ::book_grab::hh_eyeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::book_grab::hh_eyeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool order\n"
;
  }

  static const char* value(const ::book_grab::hh_eyeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::book_grab::hh_eyeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.order);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct hh_eyeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::book_grab::hh_eyeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::book_grab::hh_eyeRequest_<ContainerAllocator>& v)
  {
    s << indent << "order: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.order);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BOOK_GRAB_MESSAGE_HH_EYEREQUEST_H
