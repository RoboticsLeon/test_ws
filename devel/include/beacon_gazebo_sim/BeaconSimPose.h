// Generated by gencpp from file beacon_gazebo_sim/BeaconSimPose.msg
// DO NOT EDIT!


#ifndef BEACON_GAZEBO_SIM_MESSAGE_BEACONSIMPOSE_H
#define BEACON_GAZEBO_SIM_MESSAGE_BEACONSIMPOSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace beacon_gazebo_sim
{
template <class ContainerAllocator>
struct BeaconSimPose_
{
  typedef BeaconSimPose_<ContainerAllocator> Type;

  BeaconSimPose_()
    : id()
    , time_stamp()
    , frame_id()
    , position()  {
    }
  BeaconSimPose_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , time_stamp()
    , frame_id(_alloc)
    , position(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _id_type;
  _id_type id;

   typedef ros::Time _time_stamp_type;
  _time_stamp_type time_stamp;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _frame_id_type;
  _frame_id_type frame_id;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;





  typedef boost::shared_ptr< ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator> const> ConstPtr;

}; // struct BeaconSimPose_

typedef ::beacon_gazebo_sim::BeaconSimPose_<std::allocator<void> > BeaconSimPose;

typedef boost::shared_ptr< ::beacon_gazebo_sim::BeaconSimPose > BeaconSimPosePtr;
typedef boost::shared_ptr< ::beacon_gazebo_sim::BeaconSimPose const> BeaconSimPoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator1> & lhs, const ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.time_stamp == rhs.time_stamp &&
    lhs.frame_id == rhs.frame_id &&
    lhs.position == rhs.position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator1> & lhs, const ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace beacon_gazebo_sim

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f8d8b1b45348d9f15bc89abfd901786e";
  }

  static const char* value(const ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf8d8b1b45348d9f1ULL;
  static const uint64_t static_value2 = 0x5bc89abfd901786eULL;
};

template<class ContainerAllocator>
struct DataType< ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beacon_gazebo_sim/BeaconSimPose";
  }

  static const char* value(const ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string id\n"
"time time_stamp\n"
"string frame_id\n"
"geometry_msgs/Point position\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.time_stamp);
      stream.next(m.frame_id);
      stream.next(m.position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BeaconSimPose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beacon_gazebo_sim::BeaconSimPose_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.id);
    s << indent << "time_stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.time_stamp);
    s << indent << "frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.frame_id);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEACON_GAZEBO_SIM_MESSAGE_BEACONSIMPOSE_H
