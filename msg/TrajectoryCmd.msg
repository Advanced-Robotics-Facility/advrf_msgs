# Trajectory types
uint8 HOMING=1
uint8 SINE=2
uint8 SMOOTHER=3
uint8 SMOOTHER_VEL=4

uint8 type
string name
int32 board_id

advrf_ros2_interfaces/SmoothPar smooth_par
advrf_ros2_interfaces/PeriodPar period_par
advrf_ros2_interfaces/HomingPar homing_par
advrf_ros2_interfaces/SmoothVelPar smooth_vel_par