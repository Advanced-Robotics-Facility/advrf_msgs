cmake_minimum_required(VERSION 3.8)
project(advrf_interfaces)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(rcl_interfaces REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  # Messages (State)
  "msg/Motor.msg"
  "msg/Imu.msg"
  "msg/PowerBoard.msg"
  "msg/ForceTorque.msg"
  "msg/Pump.msg"
  "msg/Valve.msg"
  "msg/Gripper.msg"

  # Messages (Commands)
  "msg/AuxPdo.msg"
  "msg/CtrlCmd.msg"
  "msg/EcatMasterCmd.msg"
  "msg/FlashCmd.msg"
  "msg/FoeMaster.msg"
  "msg/Gains.msg"
  "msg/HomingPar.msg"
  "msg/KeyValStr.msg"
  "msg/MotorsPdoCmd.msg"
  "msg/MotorTxPdo.msg"
  "msg/MotorTxPdoVector.msg"
  "msg/MotorXtTxPdo.msg"
  "msg/MotorXtTxPdoVector.msg"
  "msg/PdoAuxCmd.msg"
  "msg/PeriodPar.msg"
  "msg/SlaveObj.msg"
  "msg/SlaveRegistryWrite.msg"
  "msg/SlaveSdoCmd.msg"
  "msg/SlaveSdoInfo.msg"
  "msg/SmoothPar.msg"
  "msg/SmoothVelPar.msg"
  "msg/TmStats.msg"
  "msg/TrajectoryCmd.msg"
  "msg/TrjQueueCmd.msg"
  "msg/TrjStatus.msg"

  # Services
  "srv/ReplCmd.srv"
  "srv/ReplInfo.srv"

  DEPENDENCIES std_msgs geometry_msgs
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()