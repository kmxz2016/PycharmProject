
#include "SixRobot.hpp" 
#include <ros/ros.h> 
#include <geometry_msgs/Twist.h> // For geometry_msgs:: Twist
#include <stdlib.h> // For rand() and RAND_MAX
SixRobot robot;

// 接收到订阅的消息后，会进入消息回调函数
void commandsCallback(const std_msgs::UInt8::ConstPtr& msg) {
	// 将接收到的消息打印出来
	ROS_INFO("I heard: [%d]", msg->data);
	robot.go(msg->data);
}

int main(int argc, char** argv) {
	// ROS节点初始化
	ros::init(argc, argv, "executor");
	// 创建节点句柄
	ros::NodeHandle n;
	// 创建一个Subscriber，订阅名为commands的topic，注册回调函数commandsCallback
	ros::Subscriber sub = n.subscribe("commands", 1000, commandsCallback);
	// 循环等待回调函数
	ros::spin();

	return 0;
}
