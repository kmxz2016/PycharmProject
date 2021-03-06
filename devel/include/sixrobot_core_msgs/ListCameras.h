// Generated by gencpp from file sixrobot_core_msgs/ListCameras.msg
// DO NOT EDIT!


#ifndef SIXROBOT_CORE_MSGS_MESSAGE_LISTCAMERAS_H
#define SIXROBOT_CORE_MSGS_MESSAGE_LISTCAMERAS_H

#include <ros/service_traits.h>


#include <sixrobot_core_msgs/ListCamerasRequest.h>
#include <sixrobot_core_msgs/ListCamerasResponse.h>


namespace sixrobot_core_msgs
{

struct ListCameras
{

typedef ListCamerasRequest Request;
typedef ListCamerasResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ListCameras
} // namespace sixrobot_core_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sixrobot_core_msgs::ListCameras > {
  static const char* value()
  {
    return "855b31192ab61744e7deb992d94db7ff";
  }

  static const char* value(const ::sixrobot_core_msgs::ListCameras&) { return value(); }
};

template<>
struct DataType< ::sixrobot_core_msgs::ListCameras > {
  static const char* value()
  {
    return "sixrobot_core_msgs/ListCameras";
  }

  static const char* value(const ::sixrobot_core_msgs::ListCameras&) { return value(); }
};


// service_traits::MD5Sum< ::sixrobot_core_msgs::ListCamerasRequest> should match 
// service_traits::MD5Sum< ::sixrobot_core_msgs::ListCameras > 
template<>
struct MD5Sum< ::sixrobot_core_msgs::ListCamerasRequest>
{
  static const char* value()
  {
    return MD5Sum< ::sixrobot_core_msgs::ListCameras >::value();
  }
  static const char* value(const ::sixrobot_core_msgs::ListCamerasRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sixrobot_core_msgs::ListCamerasRequest> should match 
// service_traits::DataType< ::sixrobot_core_msgs::ListCameras > 
template<>
struct DataType< ::sixrobot_core_msgs::ListCamerasRequest>
{
  static const char* value()
  {
    return DataType< ::sixrobot_core_msgs::ListCameras >::value();
  }
  static const char* value(const ::sixrobot_core_msgs::ListCamerasRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sixrobot_core_msgs::ListCamerasResponse> should match 
// service_traits::MD5Sum< ::sixrobot_core_msgs::ListCameras > 
template<>
struct MD5Sum< ::sixrobot_core_msgs::ListCamerasResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sixrobot_core_msgs::ListCameras >::value();
  }
  static const char* value(const ::sixrobot_core_msgs::ListCamerasResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sixrobot_core_msgs::ListCamerasResponse> should match 
// service_traits::DataType< ::sixrobot_core_msgs::ListCameras > 
template<>
struct DataType< ::sixrobot_core_msgs::ListCamerasResponse>
{
  static const char* value()
  {
    return DataType< ::sixrobot_core_msgs::ListCameras >::value();
  }
  static const char* value(const ::sixrobot_core_msgs::ListCamerasResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SIXROBOT_CORE_MSGS_MESSAGE_LISTCAMERAS_H
