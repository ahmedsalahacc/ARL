// Generated by gencpp from file exercise_three/UserInfo.msg
// DO NOT EDIT!


#ifndef EXERCISE_THREE_MESSAGE_USERINFO_H
#define EXERCISE_THREE_MESSAGE_USERINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace exercise_three
{
template <class ContainerAllocator>
struct UserInfo_
{
  typedef UserInfo_<ContainerAllocator> Type;

  UserInfo_()
    : name()
    , age(0)
    , height(0.0)  {
    }
  UserInfo_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , age(0)
    , height(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef int8_t _age_type;
  _age_type age;

   typedef float _height_type;
  _height_type height;





  typedef boost::shared_ptr< ::exercise_three::UserInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::exercise_three::UserInfo_<ContainerAllocator> const> ConstPtr;

}; // struct UserInfo_

typedef ::exercise_three::UserInfo_<std::allocator<void> > UserInfo;

typedef boost::shared_ptr< ::exercise_three::UserInfo > UserInfoPtr;
typedef boost::shared_ptr< ::exercise_three::UserInfo const> UserInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::exercise_three::UserInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::exercise_three::UserInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::exercise_three::UserInfo_<ContainerAllocator1> & lhs, const ::exercise_three::UserInfo_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.age == rhs.age &&
    lhs.height == rhs.height;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::exercise_three::UserInfo_<ContainerAllocator1> & lhs, const ::exercise_three::UserInfo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace exercise_three

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::exercise_three::UserInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exercise_three::UserInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exercise_three::UserInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exercise_three::UserInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exercise_three::UserInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exercise_three::UserInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::exercise_three::UserInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f14f2383a6b4e8219d6b0285be325fb0";
  }

  static const char* value(const ::exercise_three::UserInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf14f2383a6b4e821ULL;
  static const uint64_t static_value2 = 0x9d6b0285be325fb0ULL;
};

template<class ContainerAllocator>
struct DataType< ::exercise_three::UserInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "exercise_three/UserInfo";
  }

  static const char* value(const ::exercise_three::UserInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::exercise_three::UserInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"int8 age\n"
"float32 height\n"
;
  }

  static const char* value(const ::exercise_three::UserInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::exercise_three::UserInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.age);
      stream.next(m.height);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UserInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::exercise_three::UserInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::exercise_three::UserInfo_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "age: ";
    Printer<int8_t>::stream(s, indent + "  ", v.age);
    s << indent << "height: ";
    Printer<float>::stream(s, indent + "  ", v.height);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXERCISE_THREE_MESSAGE_USERINFO_H
