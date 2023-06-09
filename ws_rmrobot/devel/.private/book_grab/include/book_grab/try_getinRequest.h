// Generated by gencpp from file book_grab/try_getinRequest.msg
// DO NOT EDIT!


#ifndef BOOK_GRAB_MESSAGE_TRY_GETINREQUEST_H
#define BOOK_GRAB_MESSAGE_TRY_GETINREQUEST_H


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
struct try_getinRequest_
{
  typedef try_getinRequest_<ContainerAllocator> Type;

  try_getinRequest_()
    : order(false)  {
    }
  try_getinRequest_(const ContainerAllocator& _alloc)
    : order(false)  {
  (void)_alloc;
    }



   typedef uint8_t _order_type;
  _order_type order;





  typedef boost::shared_ptr< ::book_grab::try_getinRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::book_grab::try_getinRequest_<ContainerAllocator> const> ConstPtr;

}; // struct try_getinRequest_

typedef ::book_grab::try_getinRequest_<std::allocator<void> > try_getinRequest;

typedef boost::shared_ptr< ::book_grab::try_getinRequest > try_getinRequestPtr;
typedef boost::shared_ptr< ::book_grab::try_getinRequest const> try_getinRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::book_grab::try_getinRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::book_grab::try_getinRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::book_grab::try_getinRequest_<ContainerAllocator1> & lhs, const ::book_grab::try_getinRequest_<ContainerAllocator2> & rhs)
{
  return lhs.order == rhs.order;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::book_grab::try_getinRequest_<ContainerAllocator1> & lhs, const ::book_grab::try_getinRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace book_grab

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::book_grab::try_getinRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::book_grab::try_getinRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::book_grab::try_getinRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::book_grab::try_getinRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::book_grab::try_getinRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::book_grab::try_getinRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::book_grab::try_getinRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "37c743137ed8b3eada52129fdbf02b1f";
  }

  static const char* value(const ::book_grab::try_getinRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x37c743137ed8b3eaULL;
  static const uint64_t static_value2 = 0xda52129fdbf02b1fULL;
};

template<class ContainerAllocator>
struct DataType< ::book_grab::try_getinRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "book_grab/try_getinRequest";
  }

  static const char* value(const ::book_grab::try_getinRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::book_grab::try_getinRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool order\n"
;
  }

  static const char* value(const ::book_grab::try_getinRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::book_grab::try_getinRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.order);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct try_getinRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::book_grab::try_getinRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::book_grab::try_getinRequest_<ContainerAllocator>& v)
  {
    s << indent << "order: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.order);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BOOK_GRAB_MESSAGE_TRY_GETINREQUEST_H
