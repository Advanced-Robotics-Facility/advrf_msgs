cmake_minimum_required(VERSION 3.8)
project(advrf_interfaces)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(rcl_interfaces REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  # Messages (State)
  "msg/state/Motor.msg"
  "msg/state/Imu.msg"
  "msg/state/PowerBoard.msg"
  "msg/state/ForceTorque.msg"
  "msg/state/Pump.msg"
  "msg/state/Valve.msg"
  "msg/state/Gripper.msg"

  # Messages (Commands)
  "msg/cmd/AuxPdo.msg"
  "msg/cmd/CtrlCmd.msg"
  "msg/cmd/EcatMasterCmd.msg"
  "msg/cmd/FlashCmd.msg"
  "msg/cmd/FoeMaster.msg"
  "msg/cmd/Gains.msg"
  "msg/cmd/HomingPar.msg"
  "msg/cmd/KeyValStr.msg"
  "msg/cmd/MotorsPdoCmd.msg"
  "msg/cmd/PdoAuxCmd.msg"
  "msg/cmd/PeriodPar.msg"
  "msg/cmd/SlaveObj.msg"
  "msg/cmd/SlaveRegistryWrite.msg"
  "msg/cmd/SlaveSdoCmd.msg"
  "msg/cmd/SlaveSdoInfo.msg"
  "msg/cmd/SmoothPar.msg"
  "msg/cmd/SmoothVelPar.msg"
  "msg/cmd/TmStats.msg"
  "msg/cmd/TrajectoryCmd.msg"
  "msg/cmd/TrjQueueCmd.msg"
  "msg/cmd/TrjStatus.msg"

  # Services
  "srv/ReplCmd.srv"
  "srv/ReplInfo.srv"

  DEPENDENCIES std_msgs geometry_msgs
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()