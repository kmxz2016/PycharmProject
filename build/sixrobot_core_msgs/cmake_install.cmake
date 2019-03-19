# Install script for directory: /home/km/catkin_ws/src/sixrobot_core_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/km/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sixrobot_core_msgs/msg" TYPE FILE FILES
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/AnalogIOState.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/AnalogIOStates.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/AnalogOutputCommand.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/AssemblyState.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/AssemblyStates.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/CameraControl.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/CameraSettings.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/CollisionAvoidanceState.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/CollisionDetectionState.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/DigitalIOState.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/DigitalIOStates.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/DigitalOutputCommand.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/EndEffectorCommand.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/EndEffectorProperties.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/EndEffectorState.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/EndpointState.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/EndpointStates.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/HeadPanCommand.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/HeadState.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/JointCommand.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/NavigatorState.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/NavigatorStates.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/RobustControllerStatus.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/SEAJointState.msg"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/msg/URDFConfiguration.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sixrobot_core_msgs/srv" TYPE FILE FILES
    "/home/km/catkin_ws/src/sixrobot_core_msgs/srv/CloseCamera.srv"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/srv/ListCameras.srv"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/srv/OpenCamera.srv"
    "/home/km/catkin_ws/src/sixrobot_core_msgs/srv/SolvePositionIK.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sixrobot_core_msgs/cmake" TYPE FILE FILES "/home/km/catkin_ws/build/sixrobot_core_msgs/catkin_generated/installspace/sixrobot_core_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/km/catkin_ws/devel/include/sixrobot_core_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/km/catkin_ws/devel/share/roseus/ros/sixrobot_core_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/km/catkin_ws/devel/share/common-lisp/ros/sixrobot_core_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/km/catkin_ws/devel/share/gennodejs/ros/sixrobot_core_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/km/catkin_ws/devel/lib/python2.7/dist-packages/sixrobot_core_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/km/catkin_ws/devel/lib/python2.7/dist-packages/sixrobot_core_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/km/catkin_ws/build/sixrobot_core_msgs/catkin_generated/installspace/sixrobot_core_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sixrobot_core_msgs/cmake" TYPE FILE FILES "/home/km/catkin_ws/build/sixrobot_core_msgs/catkin_generated/installspace/sixrobot_core_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sixrobot_core_msgs/cmake" TYPE FILE FILES
    "/home/km/catkin_ws/build/sixrobot_core_msgs/catkin_generated/installspace/sixrobot_core_msgsConfig.cmake"
    "/home/km/catkin_ws/build/sixrobot_core_msgs/catkin_generated/installspace/sixrobot_core_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sixrobot_core_msgs" TYPE FILE FILES "/home/km/catkin_ws/src/sixrobot_core_msgs/package.xml")
endif()

