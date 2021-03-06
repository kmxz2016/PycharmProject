// Generated by gencpp from file sixrobot_core_msgs/OpenCamera.msg
// DO NOT EDIT!


#ifndef SIXROBOT_CORE_MSGS_MESSAGE_OPENCAMERA_H
#define SIXROBOT_CORE_MSGS_MESSAGE_OPENCAMERA_H

#include <ros/service_traits.h>


#include <sixrobot_core_msgs/OpenCameraRequest.h>
#include <sixrobot_core_msgs/OpenCameraResponse.h>


namespace sixrobot_core_msgs
{

struct OpenCamera
{

typedef OpenCameraRequest Request;
typedef OpenCameraResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct OpenCamera
} // namespace sixrobot_core_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sixrobot_core_msgs::OpenCamera > {
  static const char* value()
  {
    return "73eacff63d5f9cca2d986614515a5c8c";
  }

  static const char* value(const ::sixrobot_core_msgs::OpenCamera&) { return value(); }
};

template<>
struct DataType< ::sixrobot_core_msgs::OpenCamera > {
  static const char* value()
  {
    return "sixrobot_core_msgs/OpenCamera";
  }

  static const char* value(const ::sixrobot_core_msgs::OpenCamera&) { return value(); }
};


// service_traits::MD5Sum< ::sixrobot_core_msgs::OpenCameraRequest> should match 
// service_traits::MD5Sum< ::sixrobot_core_msgs::OpenCamera > 
template<>
struct MD5Sum< ::sixrobot_core_msgs::OpenCameraRequest>
{
  static const char* value()
  {
    return MD5Sum< ::sixrobot_core_msgs::OpenCamera >::value();
  }
  static const char* value(const ::sixrobot_core_msgs::OpenCameraRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sixrobot_core_msgs::OpenCameraRequest> should match 
// service_traits::DataType< ::sixrobot_core_msgs::OpenCamera > 
template<>
struct DataType< ::sixrobot_core_msgs::OpenCameraRequest>
{
  static const char* value()
  {
    return DataType< ::sixrobot_core_msgs::OpenCamera >::value();
  }
  static const char* value(const ::sixrobot_core_msgs::OpenCameraRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sixrobot_core_msgs::OpenCameraResponse> should match 
// service_traits::MD5Sum< ::sixrobot_core_msgs::OpenCamera > 
template<>
struct MD5Sum< ::sixrobot_core_msgs::OpenCameraResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sixrobot_core_msgs::OpenCamera >::value();
  }
  static const char* value(const ::sixrobot_core_msgs::OpenCameraResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sixrobot_core_msgs::OpenCameraResponse> should match 
// service_traits::DataType< ::sixrobot_core_msgs::OpenCamera > 
template<>
struct DataType< ::sixrobot_core_msgs::OpenCameraResponse>
{
  static const char* value()
  {
    return DataType< ::sixrobot_core_msgs::OpenCamera >::value();
  }
  static const char* value(const ::sixrobot_core_msgs::OpenCameraResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SIXROBOT_CORE_MSGS_MESSAGE_OPENCAMERA_H
