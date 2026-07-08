cmake_minimum_required(VERSION 3.8)
project(advrf_interfaces)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(rcl_interfaces REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/Motor.msg"
  "msg/Imu.msg"
  "msg/PowerBoard.msg"
  "msg/ForceTorque.msg"
  "msg/Pump.msg"
  "msg/Valve.msg"
  "msg/ParameterResult.msg"

  "srv/ListParameters.srv"
  "srv/GetParameters.srv"
  "srv/SetParameters.srv"
  "srv/Trigger.srv"

  DEPENDENCIES
    std_msgs
    geometry_msgs
    rcl_interfaces
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()